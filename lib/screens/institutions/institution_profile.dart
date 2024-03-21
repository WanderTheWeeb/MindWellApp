import 'package:flutter/material.dart';

import '../../widgets/review_psico.dart';

class InstitutionProfile extends StatefulWidget {
  const InstitutionProfile({Key? key}) : super(key: key);

  @override
  _InstitutionProfileState createState() => _InstitutionProfileState();
}

class _InstitutionProfileState extends State<InstitutionProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this); // Cambiar el número de pestañas según sea necesario
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Psicólogo'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaNp5_JutlwsPhJA4td9Nvr2DT5qqySDEhGA&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://neopraxis.mx/wp-content/uploads/2022/02/El-Cenaced-y-la-Anahuac-brindamos-ayuda-psicologica.jpg.webp'),
          ),
          SizedBox(height: 20),
          Text(
            'John Doe',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'Psicólogo de pareja',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          TabBar(
            tabs: [
              Tab(text: 'Información'),
              Tab(text: 'Agenda'),
              Tab(text: 'Reseñas')
            ],
            controller: _tabController,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Teléfono'),
                      subtitle: Text('123-456-7890'),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Correo'),
                      subtitle: Text('johndoe@gmail.com'),
                    ),
                    ListTile(
                      leading: Icon(Icons.access_time_outlined),
                      title: Text('Actividad'),
                      subtitle: Text('Frecuente'),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Ubicación'),
                      subtitle: Text('Calle 123, Ciudad, Estado'),
                    ),
                    ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('Costo'),
                      subtitle: Text('1000 MXN por sesión'),
                    ),
                    ListTile(
                      leading: Icon(Icons.psychology),
                      title: Text('Especialidad'),
                      subtitle: Text('Parejas'),
                    )
                  ],
                ),
                SingleChildScrollView(
                  child: CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2026),
                    onDateChanged: (value) {},
                  ),
                ),
                ListView(
                  children: [
                    ReviewPsico(
                        userName: 'Edoardo',
                        userImage: 'https://picsum.photos/250?image=9',
                        review: 'Muy buen psicólogo',
                        rating: 5),
                    ReviewPsico(
                        userName: 'Edoardo',
                        userImage: 'https://picsum.photos/250?image=9',
                        review: 'Muy buen psicólogo',
                        rating: 4),
                    ReviewPsico(
                        userName: 'Edoardo',
                        userImage: 'https://picsum.photos/250?image=9',
                        review: 'Muy buen psicólogo',
                        rating: 3),
                    ReviewPsico(
                        userName: 'Edoardo',
                        userImage: 'https://picsum.photos/250?image=9',
                        review: 'Muy buen psicólogo',
                        rating: 5),
                    ReviewPsico(
                        userName: 'Edoardo',
                        userImage: 'https://picsum.photos/250?image=9',
                        review: 'Muy buen psicólogo',
                        rating: 5),
                    ReviewPsico(
                        userName: 'Edoardo',
                        userImage: 'https://picsum.photos/250?image=9',
                        review: 'Muy buen psicólogo',
                        rating: 5),
                    ReviewPsico(
                        userName: 'Edoardo',
                        userImage: 'https://picsum.photos/250?image=9',
                        review: 'Muy buen psicólogo',
                        rating: 3),
                    ReviewPsico(
                        userName: 'Edoardo',
                        userImage: 'https://picsum.photos/250?image=9',
                        review: 'Muy buen psicólogo',
                        rating: 5),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
