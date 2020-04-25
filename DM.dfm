object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 579
  Width = 1027
  object DB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=dovidka;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 64
  end
  object Main: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select o.id, o.guid,  iif(o.dateexpired is null, o.guid_parent, ' +
        'null) as guid_parent,'
      '  o.level, l.name as level_name, o.name, '
      '  o.datestart, o.dateexpired, o.updated'
      'from _objects o'
      'left join _levels l on l.id = o.level'
      'order by o.level, o.name')
    Left = 48
    Top = 120
    object Mainid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object Mainguid: TGuidField
      FieldName = 'guid'
      FixedChar = True
      Size = 38
    end
    object Mainguid_parent: TGuidField
      FieldName = 'guid_parent'
      FixedChar = True
      Size = 38
    end
    object Mainlevel: TIntegerField
      FieldName = 'level'
    end
    object Mainlevel_name: TStringField
      FieldName = 'level_name'
      Size = 255
    end
    object Mainname: TStringField
      FieldName = 'name'
      Size = 255
    end
    object Maindatestart: TWideStringField
      FieldName = 'datestart'
      Size = 10
    end
    object Maindateexpired: TWideStringField
      FieldName = 'dateexpired'
      Size = 10
    end
    object Mainupdated: TDateTimeField
      FieldName = 'updated'
    end
  end
  object MainSrc: TDataSource
    DataSet = Main
    Left = 48
    Top = 176
  end
end
