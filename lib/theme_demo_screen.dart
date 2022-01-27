import 'package:flutter/material.dart';
import 'appbar.dart';
import 'globalTheme.dart';
import 'package:toggle_switch/toggle_switch.dart';

enum Souse { hot, spec, cheese }

_calculate(int _td, double _ps, bool ac, s) {
  int? summa;
  int ps1 = _ps.toInt();
  if (ps1 == 20) {
    summa = 300;
  } else {
    if (ps1 == 40) {
      summa = 500;
    } else {
      if (ps1 == 60) {
        summa = 600;
      }
    }
  }
  if (_td != 0) {
    summa = summa! + summa ~/ 10;
  }
  if (s != null) {
    summa = summa! +20;
  }
  if (ac) {
    summa = summa! + 30;
  }
  return summa;
}

class ThemesDemoApp extends StatelessWidget {
  const ThemesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: globalThemedark(),
      home: (const Screen()
          //ThemesDemoScreen()}
          ),
    );
  }
}
bool darkThemeOn=false;
class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: const SingleChildScrollView(
        child: _HeadPart(),
        ),
      ),
    );
  }
}

class _HeadPart extends StatelessWidget {
  const _HeadPart({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Column (mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          SizedBox(
            width: 208,
            height: 110,
            child: Image(image: AssetImage('assets/pizza.png'),
            ),),],),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 33, right: 10, bottom: 9),
            child: Text('Калькулятор пиццы',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,),
      ),
          Text('Выберите параметры:',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,),
          const SizedBox(height: 33,),
          const _ThinDoughState(),
        ]);
  }
}


class _ThinDoughState extends StatefulWidget {
  const _ThinDoughState({Key? key}) : super(key: key);

  @override
  _ThinDoughStateState createState() => _ThinDoughStateState();
}


class _ThinDoughStateState extends State<_ThinDoughState> {

  double _pizzaSize = 40;
  int _thinDough = 1;
  Souse? _souse; //= Souse.hot;
  bool _additionalCheese = false;
  int cost = 0;

  void _thinDoughChanged(value) {
    setState(() {
      _thinDough = value;
      cost = _calculate(_thinDough,_pizzaSize,
          _additionalCheese, _souse);
    });
  }

   void _souseChanged(Souse? value) {
     setState(() {
       _souse = value;
       cost = _calculate(_thinDough, _pizzaSize, _additionalCheese, _souse);
     });
  }

  void _pizzaSizeChanged(double value) {
    setState(() {
      _pizzaSize = value;
      cost = _calculate(_thinDough,_pizzaSize,
          _additionalCheese, _souse);

    });
  }
  void _additionalCheeseChanged(bool value) {
    setState(() {
      _additionalCheese =value;
      cost = _calculate(_thinDough,_pizzaSize,
          _additionalCheese, _souse);

    });
  }
  void _additionalCardChanged() {
    setState(() {
      _additionalCheese =!_additionalCheese;
      cost = _calculate(_thinDough,_pizzaSize,
          _additionalCheese, _souse);

    });
  }

  @override
    void initState() {
      super.initState();
       cost = _calculate(_thinDough,_pizzaSize,
          _additionalCheese, _souse);
    }//initialization


    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Expanded(
            flex: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ToggleSwitch(
                totalSwitches: 2,
                labels: const ['Обычное тесто', 'Тонкое тесто'],
                  customTextStyles: [
                  _thinDough == 0?
                  Theme.of(context).textTheme.bodyText1:
                  Theme.of(context).textTheme.bodyText2,
                  _thinDough == 1?
                  Theme.of(context).textTheme.bodyText1:
                  Theme.of(context).textTheme.bodyText2,
                  ],
                inactiveBgColor: Theme.of(context).shadowColor,
                activeBgColor: [Theme.of(context).cardColor],
                changeOnTap: true,
                minHeight: 36,
                minWidth: 300.0,
                animate: true,
                animationDuration: 200,
                cornerRadius: 36.0,
                initialLabelIndex: _thinDough,
                radiusStyle: true,
                onToggle: _thinDoughChanged,
              ),
            ),
          ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 19, bottom: 5),
                  child: Text('Размер:',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.headline3,),),
              ],),
          Text('${_pizzaSize.toInt()} см',
            style: Theme.of(context).textTheme.headline3,),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                child: Slider(
                  value: _pizzaSize,
                  activeColor: Theme.of(context).indicatorColor,
                  min: 20,
                  max: 60,
                  divisions: 2,
                  onChanged: _pizzaSizeChanged,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  child: Text(
                    'Соус:',
                    style: Theme.of(context).textTheme.headline4,),
                  ),
                ),
              ],
          ),
          SizedBox(height: 48,
            child: RadioListTile<Souse>(
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: const EdgeInsets.only(left: 40, right: 10),
              title: Text(
                "Острый",
                style: Theme.of(context).textTheme.headline5,
              ),
              value: Souse.hot,
              toggleable: true,
              activeColor: Theme.of(context).indicatorColor,
              selected: true,
              groupValue: _souse,
              onChanged: _souseChanged,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Divider(
              thickness: 1,
              color: devidColor,
            ),
          ),
          SizedBox(height: 48,
            child: RadioListTile<Souse>(
              contentPadding: const EdgeInsets.only(left: 40, right: 10),
              title: Text(
                "Кисло-сладкий",
                style: Theme.of(context).textTheme.headline5,),
              value: Souse.spec,
              controlAffinity: ListTileControlAffinity.trailing,
              toggleable: true,
              selected: true,
              activeColor: Theme.of(context).indicatorColor,
              groupValue: _souse,
              onChanged: _souseChanged,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Divider(
              thickness: 1,
              color: devidColor,
            ),
          ),
          SizedBox(height: 48,
            child: RadioListTile<Souse>(
              contentPadding: const EdgeInsets.only(left: 40, right: 10),
              title: Text(
                "Сырный",
                style: Theme.of(context).textTheme.headline5,),
              value: Souse.cheese,
              controlAffinity: ListTileControlAffinity.trailing,
              toggleable: true,
              selected: true,
              activeColor: Theme.of(context).indicatorColor,
              groupValue: _souse,
              onChanged: _souseChanged,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Divider(
              thickness: 1,
              color: devidColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              right: 11,
            ),
            child: Card(
              elevation: 0,
              color: Theme.of(context).shadowColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                splashColor: Colors.yellow.withAlpha(30),
                onTap: _additionalCardChanged,
                child: Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: SizedBox(
                        width: 46,
                        height: 46,
                        child: Image(
                          image: AssetImage('assets/cheese.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        "Дополнительный сыр",
                        textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Switch(
                          value: _additionalCheese,
                          activeColor: Theme.of(context).indicatorColor,
                          activeTrackColor: Theme.of(context).indicatorColor,
                          onChanged: _additionalCheeseChanged
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 15, bottom: 5),
                child: SizedBox(
                  child: Text(
                    'Стоимость:',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              right: 11,
            ),
            child: Container(
              child: Text(
                "$cost рублей",
                style: Theme.of(context).textTheme.headline1,
              ),
              alignment: Alignment.center,
              height: 36,
              color: Theme.of(context).shadowColor,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 42,
            width: 154,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Заказать",
                style: Theme.of(context).textTheme.button,),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          )
       ],);
    }
}








