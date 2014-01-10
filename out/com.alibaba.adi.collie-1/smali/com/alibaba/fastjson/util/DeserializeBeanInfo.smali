.class public Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
.super Ljava/lang/Object;
.source "DeserializeBeanInfo.java"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private factoryMethod:Ljava/lang/reflect/Method;

.field private final fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


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
    .line 28
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->clazz:Ljava/lang/Class;

    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->type:Ljava/lang/reflect/Type;

    .line 31
    return-void
.end method

.method public static computeSetters(Ljava/lang/Class;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/util/DeserializeBeanInfo;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    .locals 31
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/util/DeserializeBeanInfo;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v17, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;-><init>(Ljava/lang/Class;)V

    .line 97
    .local v17, beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v20

    .line 98
    .local v20, defaultConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-eqz v20, :cond_2

    .line 99
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 100
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->setDefaultConstructor(Ljava/lang/reflect/Constructor;)V

    .line 167
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v16

    .local v16, arr$:[Ljava/lang/reflect/Method;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    aget-object v11, v16, v24

    .line 168
    .local v11, method:Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v28

    .line 169
    .local v28, methodName:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_d

    .line 167
    :cond_1
    :goto_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 101
    .end local v11           #method:Ljava/lang/reflect/Method;
    .end local v16           #arr$:[Ljava/lang/reflect/Method;
    .end local v24           #i$:I
    .end local v27           #len$:I
    .end local v28           #methodName:Ljava/lang/String;
    :cond_2
    if-nez v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    .line 103
    .local v19, creatorConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-eqz v19, :cond_7

    .line 104
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 105
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->setCreatorConstructor(Ljava/lang/reflect/Constructor;)V

    .line 107
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_19

    .line 108
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    aget-object v30, v3, v23

    .line 109
    .local v30, paramAnnotations:[Ljava/lang/annotation/Annotation;
    const/16 v22, 0x0

    .line 110
    .local v22, fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v16, v30

    .local v16, arr$:[Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    .restart local v27       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    aget-object v29, v16, v24

    .line 111
    .local v29, paramAnnotation:Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_4

    move-object/from16 v22, v29

    .line 112
    check-cast v22, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 116
    .end local v29           #paramAnnotation:Ljava/lang/annotation/Annotation;
    :cond_3
    if-nez v22, :cond_5

    .line 117
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "illegal json creator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    .restart local v29       #paramAnnotation:Ljava/lang/annotation/Annotation;
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 120
    .end local v29           #paramAnnotation:Ljava/lang/annotation/Annotation;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v5, v3, v23

    .line 121
    .local v5, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v6, v3, v23

    .line 122
    .local v6, fieldType:Ljava/lang/reflect/Type;
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 123
    .local v8, field:Ljava/lang/reflect/Field;
    if-eqz v8, :cond_6

    .line 124
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 128
    .local v2, fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 107
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 133
    .end local v2           #fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #fieldType:Ljava/lang/reflect/Type;
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v16           #arr$:[Ljava/lang/annotation/Annotation;
    .end local v22           #fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v23           #i:I
    .end local v24           #i$:I
    .end local v27           #len$:I
    .end local v30           #paramAnnotations:[Ljava/lang/annotation/Annotation;
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 134
    .local v21, factoryMethod:Ljava/lang/reflect/Method;
    if-eqz v21, :cond_c

    .line 135
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->setFactoryMethod(Ljava/lang/reflect/Method;)V

    .line 138
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_19

    .line 139
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    aget-object v30, v3, v23

    .line 140
    .restart local v30       #paramAnnotations:[Ljava/lang/annotation/Annotation;
    const/16 v22, 0x0

    .line 141
    .restart local v22       #fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v16, v30

    .restart local v16       #arr$:[Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    .restart local v27       #len$:I
    const/16 v24, 0x0

    .restart local v24       #i$:I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    aget-object v29, v16, v24

    .line 142
    .restart local v29       #paramAnnotation:Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_9

    move-object/from16 v22, v29

    .line 143
    check-cast v22, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 147
    .end local v29           #paramAnnotation:Ljava/lang/annotation/Annotation;
    :cond_8
    if-nez v22, :cond_a

    .line 148
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "illegal json creator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    .restart local v29       #paramAnnotation:Ljava/lang/annotation/Annotation;
    :cond_9
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 151
    .end local v29           #paramAnnotation:Ljava/lang/annotation/Annotation;
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v5, v3, v23

    .line 152
    .restart local v5       #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v6, v3, v23

    .line 153
    .restart local v6       #fieldType:Ljava/lang/reflect/Type;
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 154
    .restart local v8       #field:Ljava/lang/reflect/Field;
    if-eqz v8, :cond_b

    .line 155
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    :cond_b
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 159
    .restart local v2       #fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 138
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 164
    .end local v2           #fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #fieldType:Ljava/lang/reflect/Type;
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v16           #arr$:[Ljava/lang/annotation/Annotation;
    .end local v22           #fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v23           #i:I
    .end local v24           #i$:I
    .end local v27           #len$:I
    .end local v30           #paramAnnotations:[Ljava/lang/annotation/Annotation;
    :cond_c
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "default constructor not found. "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    .end local v19           #creatorConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v21           #factoryMethod:Ljava/lang/reflect/Method;
    .restart local v11       #method:Ljava/lang/reflect/Method;
    .local v16, arr$:[Ljava/lang/reflect/Method;
    .restart local v24       #i$:I
    .restart local v27       #len$:I
    .restart local v28       #methodName:Ljava/lang/String;
    :cond_d
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_e
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 186
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v15

    check-cast v15, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 188
    .local v15, annotation:Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v15, :cond_f

    .line 189
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    .line 194
    invoke-interface {v15}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, propertyName:Ljava/lang/String;
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v12, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v9 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_1

    .line 201
    .end local v10           #propertyName:Ljava/lang/String;
    :cond_f
    const-string v3, "set"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 204
    .restart local v10       #propertyName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 205
    .restart local v8       #field:Ljava/lang/reflect/Field;
    if-eqz v8, :cond_10

    .line 207
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v22

    check-cast v22, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 209
    .restart local v22       #fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v22, :cond_10

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    .line 210
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v10

    .line 212
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v12, v8

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v9 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_1

    .line 217
    .end local v22           #fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_10
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v12, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v9 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 218
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_1

    .line 222
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v10           #propertyName:Ljava/lang/String;
    .end local v11           #method:Ljava/lang/reflect/Method;
    .end local v15           #annotation:Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v28           #methodName:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v16

    .local v16, arr$:[Ljava/lang/reflect/Field;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    const/16 v24, 0x0

    move/from16 v25, v24

    .end local v24           #i$:I
    .local v25, i$:I
    :goto_6
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    aget-object v8, v16, v25

    .line 223
    .restart local v8       #field:Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 222
    .end local v25           #i$:I
    :cond_12
    :goto_7
    add-int/lit8 v24, v25, 0x1

    .restart local v24       #i$:I
    move/from16 v25, v24

    .end local v24           #i$:I
    .restart local v25       #i$:I
    goto :goto_6

    .line 227
    :cond_13
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 231
    const/16 v18, 0x0

    .line 232
    .local v18, contains:Z
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .end local v25           #i$:I
    .local v24, i$:Ljava/util/Iterator;
    :cond_14
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 233
    .local v26, item:Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 234
    const/16 v18, 0x1

    .line 235
    goto :goto_8

    .line 239
    .end local v26           #item:Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_15
    if-nez v18, :cond_12

    .line 243
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_7

    .line 246
    .end local v8           #field:Ljava/lang/reflect/Field;
    .end local v18           #contains:Z
    .end local v24           #i$:Ljava/util/Iterator;
    .restart local v25       #i$:I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v16

    .local v16, arr$:[Ljava/lang/reflect/Method;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    const/16 v24, 0x0

    .end local v25           #i$:I
    .local v24, i$:I
    :goto_9
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_19

    aget-object v11, v16, v24

    .line 247
    .restart local v11       #method:Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v28

    .line 248
    .restart local v28       #methodName:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_18

    .line 246
    :cond_17
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 252
    :cond_18
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 256
    const-string v3, "get"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 257
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_17

    .line 261
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 267
    .restart local v10       #propertyName:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getField(Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v2

    .line 268
    .restart local v2       #fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    if-nez v2, :cond_17

    .line 272
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v12, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v9 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 273
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_a

    .line 277
    .end local v2           #fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10           #propertyName:Ljava/lang/String;
    .end local v11           #method:Ljava/lang/reflect/Method;
    .end local v16           #arr$:[Ljava/lang/reflect/Method;
    .end local v24           #i$:I
    .end local v27           #len$:I
    .end local v28           #methodName:Ljava/lang/String;
    :cond_19
    return-object v17
.end method

.method public static getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 318
    .local v3, creatorConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/reflect/Constructor;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 319
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 320
    .local v0, annotation:Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v0, :cond_2

    .line 321
    if-eqz v3, :cond_0

    .line 322
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "multi-json creator"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 325
    :cond_0
    move-object v3, v2

    .line 329
    .end local v0           #annotation:Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    return-object v3

    .line 318
    .restart local v0       #annotation:Lcom/alibaba/fastjson/annotation/JSONCreator;
    .restart local v2       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    const/4 v2, 0x0

    .line 312
    :cond_0
    :goto_0
    return-object v2

    .line 293
    :cond_1
    const/4 v2, 0x0

    .line 294
    .local v2, defaultConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 295
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    .line 296
    move-object v2, v1

    .line 301
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    if-nez v2, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 304
    .restart local v1       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    move-object v2, v1

    .line 306
    goto :goto_0

    .line 294
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 303
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 335
    .local v2, factoryMethod:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v1, v3

    .line 336
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 335
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 344
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 345
    .local v0, annotation:Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v0, :cond_0

    .line 346
    if-eqz v2, :cond_2

    .line 347
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "multi-json creator"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 350
    :cond_2
    move-object v2, v5

    .line 354
    .end local v0           #annotation:Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_3
    return-object v2
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 284
    :goto_0
    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 4
    .parameter "field"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 81
    .local v1, item:Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 87
    .end local v1           #item:Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_0
    return v2

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getCreatorConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDefaultConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getFactoryMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 71
    .local v1, item:Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    .end local v1           #item:Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public setCreatorConstructor(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, createConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 47
    return-void
.end method

.method public setDefaultConstructor(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, defaultConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 39
    return-void
.end method

.method public setFactoryMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "factoryMethod"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 55
    return-void
.end method
