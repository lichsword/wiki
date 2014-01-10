.class public Landroid/taobao/apirequest/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReflectUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convert(Ljava/lang/Object;)Landroid/taobao/apirequest/MTaoApiRequest;
    .locals 9
    .parameter "input"

    .prologue
    .line 27
    new-instance v5, Landroid/taobao/apirequest/MTaoApiRequest;

    invoke-direct {v5}, Landroid/taobao/apirequest/MTaoApiRequest;-><init>()V

    .line 28
    .local v5, request:Landroid/taobao/apirequest/MTaoApiRequest;
    if-eqz p0, :cond_2

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 31
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 32
    .local v2, fields:[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_2

    .line 33
    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 35
    .local v6, value:Ljava/lang/Object;
    const-string v7, "VERSION"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "API_NAME"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "NEED_ECODE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "$"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    const-string v7, "serialVersionUID"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ORIGINALJSON"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 41
    :try_start_0
    aget-object v7, v2, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    aget-object v7, v2, v3

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 54
    .end local v6           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 65
    :try_start_1
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/taobao/apirequest/MTaoApiRequest;->addDataParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 32
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .restart local v6       #value:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 45
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 47
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v6           #value:Ljava/lang/Object;
    :catch_3
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Throwable;
    const-string v7, "ReflectUtil:"

    const-string v8, "convert() addDataParam exception."

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 74
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #e:Ljava/lang/Throwable;
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public static convertToApiRequest(Ljava/lang/Object;)Landroid/taobao/apirequest/top/TopApiRequest;
    .locals 10
    .parameter "input"

    .prologue
    .line 85
    new-instance v5, Landroid/taobao/apirequest/top/TopApiRequest;

    invoke-direct {v5}, Landroid/taobao/apirequest/top/TopApiRequest;-><init>()V

    .line 87
    .local v5, request:Landroid/taobao/apirequest/top/TopApiRequest;
    if-eqz p0, :cond_2

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 91
    .local v2, fields:[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_2

    .line 92
    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 94
    .local v6, value:Ljava/lang/Object;
    const-string v7, "VERSION"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "API_NAME"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "NEED_ECODE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "$"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    const-string v7, "serialVersionUID"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 99
    :try_start_0
    aget-object v7, v2, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    aget-object v7, v2, v3

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 112
    .end local v6           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 119
    :try_start_1
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\""

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/taobao/apirequest/top/TopApiRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 91
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .restart local v6       #value:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v6           #value:Ljava/lang/Object;
    :catch_3
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/Throwable;
    const-string v7, "ReflectUtil:"

    const-string v8, "convert() addDataParam exception."

    invoke-static {v7, v8}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #e:Ljava/lang/Throwable;
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .end local v3           #i:I
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public static getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "fieldName"
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 140
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-object v4

    .line 144
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, firstLetter:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, getter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 147
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 149
    .local v4, value:Ljava/lang/Object;
    goto :goto_0

    .line 151
    .end local v1           #firstLetter:Ljava/lang/String;
    .end local v2           #getter:Ljava/lang/String;
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ReflectUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field not exist:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPublicFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "fieldName"
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 165
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v5

    .line 168
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 169
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 170
    .local v3, fs:[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_0

    .line 171
    aget-object v2, v3, v4

    .line 172
    .local v2, f:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 173
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 175
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "ReflectUtil"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    :catch_1
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v6, "ReflectUtil"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/taobao/util/TaoLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
