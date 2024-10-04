ListView.builder(
        itemCount: _passwords.length,
        itemBuilder: (context, index) {
          final entry = _passwords[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                entry.website[0].toUpperCase(), // عرض أول حرف من اسم الموقع
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.orange,
            ),
            title: Text(entry.website),
            subtitle: Text('اسم المستخدم: ${entry.username}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {

                // منطق الحذف
              },
            ),
          );
        },
      ),
    );
