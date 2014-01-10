.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Ljava/lang/Object;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 27
    .parameter "serializer"
    .parameter "object"
    .parameter "fieldName"
    .parameter "fieldType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v17

    .line 37
    .local v17, out:Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 38
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 179
    :goto_0
    return-void

    :cond_0
    move-object/from16 v12, p2

    .line 42
    check-cast v12, Ljava/util/Map;

    .line 44
    .local v12, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    sget-object v26, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 45
    instance-of v0, v12, Ljava/util/SortedMap;

    move/from16 v26, v0

    if-nez v26, :cond_1

    instance-of v0, v12, Ljava/util/LinkedHashMap;

    move/from16 v26, v0

    if-nez v26, :cond_1

    .line 47
    :try_start_0
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13, v12}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    .local v13, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    move-object v12, v13

    .line 54
    .end local v13           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    .restart local v12       #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 55
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v18

    .line 60
    .local v18, parent:Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    const/16 v26, 0x7b

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 66
    const/16 v19, 0x0

    .line 67
    .local v19, preClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v20, 0x0

    .line 69
    .local v20, preWriter:Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v8, 0x1

    .line 71
    .local v8, first:Z
    sget-object v26, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 72
    const-string v26, "@type"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 74
    const/4 v8, 0x0

    .line 77
    :cond_3
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 78
    .local v6, entry:Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    .line 80
    .local v23, value:Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 82
    .local v7, entryKey:Ljava/lang/Object;
    if-eqz v7, :cond_5

    instance-of v0, v7, Ljava/lang/String;

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 83
    :cond_5
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 85
    .local v11, key:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFiltersDirect()Ljava/util/List;

    move-result-object v16

    .line 86
    .local v16, namePreFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v16, :cond_8

    .line 87
    const/4 v4, 0x1

    .line 88
    .local v4, apply:Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 89
    .local v14, nameFilter:Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1, v11}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 90
    const/4 v4, 0x0

    .line 95
    .end local v14           #nameFilter:Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    :cond_7
    if-eqz v4, :cond_4

    .line 100
    .end local v4           #apply:Z
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v22

    .line 101
    .local v22, propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v22, :cond_b

    .line 102
    const/4 v4, 0x1

    .line 103
    .restart local v4       #apply:Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 104
    .local v21, propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v11, v2}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 105
    const/4 v4, 0x0

    .line 110
    .end local v21           #propertyFilter:Lcom/alibaba/fastjson/serializer/PropertyFilter;
    :cond_a
    if-eqz v4, :cond_4

    .line 115
    .end local v4           #apply:Z
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v15

    .line 116
    .local v15, nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v15, :cond_c

    .line 117
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 118
    .local v14, nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v11, v1}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 122
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #nameFilter:Lcom/alibaba/fastjson/serializer/NameFilter;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFiltersDirect()Ljava/util/List;

    move-result-object v25

    .line 123
    .local v25, valueFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    if-eqz v25, :cond_d

    .line 124
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 125
    .local v24, valueFilter:Lcom/alibaba/fastjson/serializer/ValueFilter;
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v11, v2}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto :goto_4

    .line 129
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v24           #valueFilter:Lcom/alibaba/fastjson/serializer/ValueFilter;
    :cond_d
    if-nez v23, :cond_e

    .line 130
    sget-object v26, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 135
    :cond_e
    if-nez v8, :cond_f

    .line 136
    const/16 v26, 0x2c

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 139
    :cond_f
    sget-object v26, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 142
    :cond_10
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 152
    .end local v11           #key:Ljava/lang/String;
    .end local v15           #nameFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v16           #namePreFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v22           #propertyFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v25           #valueFilters:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :goto_5
    const/4 v8, 0x0

    .line 154
    if-nez v23, :cond_13

    .line 155
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 171
    .end local v6           #entry:Ljava/util/Map$Entry;
    .end local v7           #entryKey:Ljava/lang/Object;
    .end local v8           #first:Z
    .end local v19           #preClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v20           #preWriter:Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v23           #value:Ljava/lang/Object;
    :catchall_0
    move-exception v26

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    throw v26

    .line 144
    .restart local v6       #entry:Ljava/util/Map$Entry;
    .restart local v7       #entryKey:Ljava/lang/Object;
    .restart local v8       #first:Z
    .restart local v19       #preClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v20       #preWriter:Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v23       #value:Ljava/lang/Object;
    :cond_11
    if-nez v8, :cond_12

    .line 145
    const/16 v26, 0x2c

    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 148
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 149
    const/16 v26, 0x3a

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_5

    .line 159
    :cond_13
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 161
    .local v5, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, v19

    if-ne v5, v0, :cond_14

    .line 162
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_2

    .line 164
    :cond_14
    move-object/from16 v19, v5

    .line 165
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v20

    .line 167
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 171
    .end local v5           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #entry:Ljava/util/Map$Entry;
    .end local v7           #entryKey:Ljava/lang/Object;
    .end local v23           #value:Ljava/lang/Object;
    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 175
    sget-object v26, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v26

    if-eqz v26, :cond_16

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v26

    if-lez v26, :cond_16

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 178
    :cond_16
    const/16 v26, 0x7d

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_0

    .line 48
    .end local v8           #first:Z
    .end local v18           #parent:Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v19           #preClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v20           #preWriter:Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_0
    move-exception v26

    goto/16 :goto_1
.end method
