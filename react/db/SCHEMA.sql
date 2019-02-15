DROP DATABASE IF EXISTS usersData;
CREATE DATABASE usersData;
\c usersData;


DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS data;

CREATE TABLE Users (
  id SERIAL PRIMARY KEY,
  email TEXT
);

CREATE TABLE data (
  id SERIAL PRIMARY KEY,
  email TEXT,
  data1 TEXT,
  editableText TEXT
);

INSERT INTO Users (email) VALUES ('ikaur@gmail.com');
INSERT INTO Users (email) VALUES ('mlopez@vfacility.ai');
INSERT INTO Users (email) VALUES ('nawaz@vfacility.ai');
INSERT INTO Users (email) VALUES ('joe@hr.com');
INSERT INTO Users (email) VALUES ('john@hr.com');
INSERT INTO Users (email) VALUES ('abc@xyz.com');

INSERT INTO data (data1, email, editableText) VALUES ('Lorem ipsum dolor sit amet, ', 'ikaur@gmail.com', 'FIRST_EDITABLE_FIELD');
INSERT INTO data (data1, email, editableText) VALUES ('adipiscing elit. Aenean dictum elementum purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut porta venenatis velit, ac scelerisque nisi lobortis eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In pellentesque elementum dolor vel aliquam. Integer maximus mattis nisi non efficitur. Nam elementum venenatis nibh sed feugiat. Aliquam a diam sed nulla lobortis sollicitudin ac vel lorem.
      Duis eu dui id sem dapibus sodales egestas et arcu. Aenean convallis nunc eu risus bibendum efficitur. Aenean congue sapien a tortor aliquam rhoncus. Nulla blandit suscipit justo, ac tincidunt mauris pharetra in. Phasellus congue congue convallis. Nullam feugiat nisl vel gravida rutrum. Vestibulum id quam gravida, gravida mauris id, bibendum nulla. Fusce vitae felis malesuada, mattis sem a, mattis risus.
      Aenean mollis, leo et consectetur tincidunt, ', 'ikaur@gmail.com', 'SECOND_EDITABLE_FIELD');
INSERT INTO data (data1, email, editableText) VALUES ('neque porttitor sapien, luctus auctor magna mi vel ante.  ', 'ikaur@gmail.com', 'THIRD_EDITABLE_FIELD');
INSERT INTO data (data1, email, editableText) VALUES ('suscipit tortor sed leo tincidunt egestas. Integer eu dui dapibus, lacinia purus quis, tempor sem. Morbi in malesuada justo. Morbi et neque tincidunt, consectetur lacus nec, ornare velit. Ut sit amet laoreet massa. Sed a erat risus. Aenean vulputate diam augue, non egestas velit tristique id. Suspendisse potenti.
      Praesent sollicitudin, quam nec tempor molestie, elit  ', 'ikaur@gmail.com', 'FORTH_EDITABLE_FIELD');
INSERT INTO data (data1, email, editableText) VALUES (' vehicula quam, fringilla fermentum massa nulla eu elit. Nullam nec egestas arcu, ac maximus odio. Integer ac vulputate libero. In ac dui eget felis laoreet placerat. Morbi dapibus turpis at enim ultricies, eget venenatis risus elementum. Cras molestie arcu eget magna tristique, nec tristique tellus venenatis. Praesent at scelerisque velit. Cras nec est magna. Vivamus vitae porta dolor. Vivamus felis dui, tincidunt ac nisl non, suscipit luctus metus.
      Nullam viverra ante nunc, eget ullamcorper lacus fringilla vel. Nam non dui ex. Vivamus nunc lacus, mollis eget lectus in, finibus molestie tellus. Etiam interdum libero enim, pretium laoreet mauris volutpat vel. Ut ornare ultrices velit, a rutrum odio blandit non. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla pharetra odio ut nulla aliquam sagittis. Quisque nisl orci, fringilla et tellus ut, ornare vehicula nulla. Quisque condimentum et massa ut aliquam. Integer vestibulum tellus sed dui vehicula,
      eu elementum elit varius. Aenean libero dolor, vulputate quis  ', 'ikaur@gmail.com', 'FIFTH_EDITABLE_FIELD');
INSERT INTO data (data1, email, editableText) VALUES (' vitae, laoreet sit amet felis. Pellentesque sit amet laoreet sem, sit amet scelerisque arcu. Praesent pulvinar mauris a finibus porttitor. Aenean sodales convallis mi, quis tincidunt ante consequat.`', 'ikaur@gmail.com', 'SIXTH_EDITABLE_FIELD');

INSERT INTO data (data1, email, editableText) VALUES ('Lorem ipsum dolor sit amet, ', 'mlopez@vfacility.ai', 'FIRST');
INSERT INTO data (data1, email, editableText) VALUES ('adipiscing elit. Aenean dictum elementum purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut porta venenatis velit, ac scelerisque nisi lobortis eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In pellentesque elementum dolor vel aliquam. Integer maximus mattis nisi non efficitur. Nam elementum venenatis nibh sed feugiat. Aliquam a diam sed nulla lobortis sollicitudin ac vel lorem.
      Duis eu dui id sem dapibus sodales egestas et arcu. Aenean convallis nunc eu risus bibendum efficitur. Aenean congue sapien a tortor aliquam rhoncus. Nulla blandit suscipit justo, ac tincidunt mauris pharetra in. Phasellus congue congue convallis. Nullam feugiat nisl vel gravida rutrum. Vestibulum id quam gravida, gravida mauris id, bibendum nulla. Fusce vitae felis malesuada, mattis sem a, mattis risus.
      Aenean mollis, leo et consectetur tincidunt, ', 'mlopez@vfacility.ai', 'SECOND');
INSERT INTO data (data1, email, editableText) VALUES ('neque porttitor sapien, luctus auctor magna mi vel ante.  ', 'mlopez@vfacility.ai', 'THIRD');
INSERT INTO data (data1, email, editableText) VALUES ('suscipit tortor sed leo tincidunt egestas. Integer eu dui dapibus, lacinia purus quis, tempor sem. Morbi in malesuada justo. Morbi et neque tincidunt, consectetur lacus nec, ornare velit. Ut sit amet laoreet massa. Sed a erat risus. Aenean vulputate diam augue, non egestas velit tristique id. Suspendisse potenti.
      Praesent sollicitudin, quam nec tempor molestie, elit  ', 'mlopez@vfacility.ai', 'FORTH');
INSERT INTO data (data1, email, editableText) VALUES (' vehicula quam, fringilla fermentum massa nulla eu elit. Nullam nec egestas arcu, ac maximus odio. Integer ac vulputate libero. In ac dui eget felis laoreet placerat. Morbi dapibus turpis at enim ultricies, eget venenatis risus elementum. Cras molestie arcu eget magna tristique, nec tristique tellus venenatis. Praesent at scelerisque velit. Cras nec est magna. Vivamus vitae porta dolor. Vivamus felis dui, tincidunt ac nisl non, suscipit luctus metus.
      Nullam viverra ante nunc, eget ullamcorper lacus fringilla vel. Nam non dui ex. Vivamus nunc lacus, mollis eget lectus in, finibus molestie tellus. Etiam interdum libero enim, pretium laoreet mauris volutpat vel. Ut ornare ultrices velit, a rutrum odio blandit non. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla pharetra odio ut nulla aliquam sagittis. Quisque nisl orci, fringilla et tellus ut, ornare vehicula nulla. Quisque condimentum et massa ut aliquam. Integer vestibulum tellus sed dui vehicula,
      eu elementum elit varius. Aenean libero dolor, vulputate quis  ', 'mlopez@vfacility.ai', 'FIFTH');
INSERT INTO data (data1, email, editableText) VALUES (' vitae, laoreet sit amet felis. Pellentesque sit amet laoreet sem, sit amet scelerisque arcu. Praesent pulvinar mauris a finibus porttitor. Aenean sodales convallis mi, quis tincidunt ante consequat.`', 'mlopez@vfacility.ai', 'SIXTH');

