.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, aliasMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, getterList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    const/4 v4, 0x0

    invoke-static {p1, p2, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, fieldInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 67
    .local v0, fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0           #fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #getterList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .restart local v2       #getterList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    const/4 v4, 0x1

    invoke-static {p1, p2, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 77
    .restart local v0       #fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v0           #fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 82
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "aliasList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter "aliasList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v1, aliasMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p0

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 55
    .local v0, alias:Ljava/lang/String;
    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v0           #alias:Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 2
    .parameter "fieldInfo"

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 201
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Number;

    if-ne v0, v1, :cond_0

    .line 202
    new-instance v1, Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 205
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0
.end method

.method public getGetters()[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    return-object v0
.end method

.method protected isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1
    .parameter "serializer"
    .parameter "obj"
    .parameter "fieldType"
    .parameter "fieldName"

    .prologue
    .line 85
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 19
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
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v14

    .line 91
    .local v14, out:Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 92
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 192
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 97
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_1
    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 104
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 109
    .local v9, getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v15

    .line 110
    .local v15, parent:Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    const/16 v17, 0x7b

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 115
    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_2

    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 120
    :cond_2
    const/4 v5, 0x0

    .line 122
    .local v5, commaFlag:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 123
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 124
    .local v12, objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p4

    if-eq v12, v0, :cond_3

    .line 125
    const-string v17, "@type"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 127
    const/4 v5, 0x1

    .line 131
    .end local v12           #objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    .line 132
    aget-object v8, v9, v10

    .line 134
    .local v8, fieldSerializer:Lcom/alibaba/fastjson/serializer/FieldSerializer;
    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 135
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    .line 136
    .local v7, field:Ljava/lang/reflect/Field;
    if-eqz v7, :cond_6

    .line 137
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_6

    .line 131
    .end local v7           #field:Ljava/lang/reflect/Field;
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 106
    .end local v5           #commaFlag:Z
    .end local v8           #fieldSerializer:Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v9           #getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v10           #i:I
    .end local v15           #parent:Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .restart local v9       #getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_1

    .line 143
    .restart local v5       #commaFlag:Z
    .restart local v8       #fieldSerializer:Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v10       #i:I
    .restart local v15       #parent:Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_6
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 145
    .local v16, propertyValue:Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 149
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 151
    .local v11, key:Ljava/lang/String;
    move-object/from16 v13, v16

    .line 152
    .local v13, originalValue:Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 154
    if-nez v16, :cond_7

    .line 155
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->isWriteNull()Z

    move-result v17

    if-nez v17, :cond_7

    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 161
    :cond_7
    if-eqz v5, :cond_8

    .line 162
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 163
    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 168
    :cond_8
    invoke-virtual {v8}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    if-eq v11, v0, :cond_9

    .line 169
    invoke-virtual {v14, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 178
    :goto_4
    const/4 v5, 0x1

    goto :goto_3

    .line 171
    :cond_9
    move-object/from16 v0, v16

    if-eq v13, v0, :cond_a

    .line 172
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 173
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 187
    .end local v5           #commaFlag:Z
    .end local v8           #fieldSerializer:Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v10           #i:I
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #originalValue:Ljava/lang/Object;
    .end local v16           #propertyValue:Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 188
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "write javaBean error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    throw v17

    .line 175
    .restart local v5       #commaFlag:Z
    .restart local v8       #fieldSerializer:Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v10       #i:I
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #originalValue:Ljava/lang/Object;
    .restart local v16       #propertyValue:Ljava/lang/Object;
    :cond_a
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_4

    .line 181
    .end local v8           #fieldSerializer:Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #originalValue:Ljava/lang/Object;
    .end local v16           #propertyValue:Ljava/lang/Object;
    :cond_b
    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_c

    sget-object v17, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 186
    :cond_c
    const/16 v17, 0x7d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 190
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto/16 :goto_0
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 0
    .parameter "serializer"
    .parameter "object"

    .prologue
    .line 195
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 196
    return-void
.end method
