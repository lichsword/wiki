.class public Lorg/usertrack/android/utils/l;
.super Ljava/lang/Object;
.source "PropertiesUtils.java"


# direct methods
.method public static a(Ljava/util/Properties;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 5
    .parameter "pNewProperties"
    .parameter "pOldProperties"

    .prologue
    .line 12
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 16
    .local v2, lPropertyNames:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_2

    .line 30
    .end local v2           #lPropertyNames:Ljava/util/Enumeration;
    .end local p0
    :cond_1
    :goto_1
    return-object p0

    .line 17
    .restart local v2       #lPropertyNames:Ljava/util/Enumeration;
    .restart local p0
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, lKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 19
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, lValue:Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    .end local v1           #lKey:Ljava/lang/String;
    .end local v2           #lPropertyNames:Ljava/util/Enumeration;
    .end local v3           #lValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 27
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    if-eqz p1, :cond_1

    move-object p0, p1

    .line 28
    goto :goto_1
.end method

.method public static c(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 6
    .parameter "pProperties"

    .prologue
    .line 34
    if-eqz p0, :cond_1

    .line 35
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 37
    .local v3, pBase64Properties:Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 38
    .local v1, lPropertyNames:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    .end local v1           #lPropertyNames:Ljava/util/Enumeration;
    .end local v3           #pBase64Properties:Ljava/util/Properties;
    :goto_1
    return-object v3

    .line 39
    .restart local v1       #lPropertyNames:Ljava/util/Enumeration;
    .restart local v3       #pBase64Properties:Ljava/util/Properties;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, lKey:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, lValue:Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v0           #lKey:Ljava/lang/String;
    .end local v1           #lPropertyNames:Ljava/util/Enumeration;
    .end local v2           #lValue:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 49
    .end local v3           #pBase64Properties:Ljava/util/Properties;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static d(Ljava/util/Properties;)[Ljava/lang/String;
    .locals 8
    .parameter "pNewProperties"

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, lList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #lList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .restart local v3       #lList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 58
    .local v4, lPropertyNames:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 66
    .end local v4           #lPropertyNames:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 69
    :goto_2
    return-object v1

    .line 59
    .restart local v4       #lPropertyNames:Ljava/util/Enumeration;
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, lKey:Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, lValue:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    .end local v2           #lKey:Ljava/lang/String;
    .end local v4           #lPropertyNames:Ljava/util/Enumeration;
    .end local v5           #lValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_2
.end method
