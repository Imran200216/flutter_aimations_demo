import 'dart:ui';
import 'package:flutter/material.dart';

class CustomHoverCard extends StatefulWidget {
  final String imageUrl;
  final String specialCode;
  final String title;
  final String subtitle;
  final String additionalText;
  final Function onMorePressed;

  const CustomHoverCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.additionalText,
    required this.onMorePressed,
    required this.specialCode,
  });

  @override
  State<CustomHoverCard> createState() => _CustomHoverCardState();
}

class _CustomHoverCardState extends State<CustomHoverCard> {
  bool _isHovered = false;

  void _onEnter(PointerEvent details) {
    setState(() {
      _isHovered = true;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _isHovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    /// mouse regin => onEnter, onExit
    /// onEnter => hover = true
    /// onExit => hover = false


    /// AnimationContainer => duration
    /// transfomr

    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        /// enlargement of size
        transform: Matrix4.translationValues(0, _isHovered ? -10 : 0, 0),
        child: Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            /// hover = > --- non-hover => ---,
            color: _isHovered ? const Color(0xFF7B5FEB) : Colors.transparent,
            gradient: _isHovered
                ? const LinearGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
              ],
            )
                : LinearGradient(
              colors: [
                Colors.white.withOpacity(0.10),
                Colors.white.withOpacity(0.05),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: BackdropFilter(
              filter: _isHovered
                  ? ImageFilter.blur(sigmaX: 0, sigmaY: 0)
                  : ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                alignment: Alignment.center,
                color: _isHovered
                    ? const Color(0xFF7B5FEB)
                    : Colors.white.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                    bottom: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.specialCode,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: _isHovered
                                  ? Colors.white
                                  : const Color(0xFF727EA3),
                              fontSize: 16,
                            ),
                          ),
                          IconButton(
                            onPressed: () => widget.onMorePressed(),
                            icon: Icon(
                              Icons.more_horiz,
                              color: _isHovered
                                  ? Colors.white
                                  : const Color(0xFF727EA3),
                              size: 26,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(flex: 1),
                      Text(
                        widget.additionalText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(flex: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.network(
                              widget.imageUrl,
                              width: 54,
                              height: 54,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                widget.subtitle,
                                style: TextStyle(
                                  color: _isHovered
                                      ? Colors.white
                                      : const Color(0xFF727EA3),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}