part of 'widgets.dart';

class DatePickerCard extends StatelessWidget {
  final bool isSelected;
  final bool isEnabled;
  final double width;
  final double height;
  final DateTime? date;
  final Function? onTap;
  final TextStyle? textStyle;

  DatePickerCard(this.date,
      {this.isSelected = false,
      this.isEnabled = true,
      this.width = 45,
      this.height = 70,
      this.onTap,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null && date!.weekday <= 5) {
          onTap!();
        }
      },
      child: Container(
        width: (MediaQuery.of(context).size.width - 80) / 7,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: (!isEnabled)
              ? Colors.transparent
              : isSelected
                  ? orangeColor1.withOpacity(0.3)
                  : Colors.transparent,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [orangeColor1, whiteColor1],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${date!.shortDayName}',
              style: (date!.weekday > 5)
                  ? greyTextFont.copyWith(
                      fontSize: 11,
                    )
                  : isSelected
                      ? orangeTextFont.copyWith(
                          fontSize: 11,
                        )
                      : blackTextFont.copyWith(
                          fontSize: 11,
                        ),
            ),
            SizedBox(height: 2),
            Text(
              date!.day.toString(),
              style: (date!.weekday > 5)
                  ? greyTextFont.copyWith(
                      fontSize: 16,
                    )
                  : isSelected
                      ? orangeTextFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )
                      : blackTextFont.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
