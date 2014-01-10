.class public final Lorg/usertrack/android/library/b/d$a$a;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lorg/usertrack/android/library/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/usertrack/android/library/b/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final jD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private jE:Z

.field final synthetic qv:Lorg/usertrack/android/library/b/d$a;


# direct methods
.method public constructor <init>(Lorg/usertrack/android/library/b/d$a;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/b/d$a$a;->jD:Ljava/util/Map;

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/usertrack/android/library/b/d$a$a;->jE:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;F)Lorg/usertrack/android/library/b/b$a;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/b/d$a$a;->jD:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit p0

    return-object p0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;J)Lorg/usertrack/android/library/b/b$a;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/b/d$a$a;->jD:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    monitor-exit p0

    return-object p0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Z)Lorg/usertrack/android/library/b/b$a;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/b/d$a$a;->jD:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit p0

    return-object p0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 15

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 282
    const/4 v5, 0x0

    .line 283
    .local v5, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 285
    .local v8, listeners:Ljava/util/Set;,"Ljava/util/Set<Lorg/usertrack/android/library/b/b$b;>;"
    invoke-static {}, Lorg/usertrack/android/library/b/d;->ep()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 286
    :try_start_0
    iget-object v14, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    invoke-static {v14}, Lorg/usertrack/android/library/b/d$a;->a(Lorg/usertrack/android/library/b/d$a;)Ljava/util/WeakHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/WeakHashMap;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 287
    .local v1, hasListeners:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 288
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    .end local v5           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v6, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v9, Ljava/util/HashSet;

    .line 290
    iget-object v12, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    invoke-static {v12}, Lorg/usertrack/android/library/b/d$a;->a(Lorg/usertrack/android/library/b/d$a;)Ljava/util/WeakHashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 289
    invoke-direct {v9, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v8           #listeners:Ljava/util/Set;,"Ljava/util/Set<Lorg/usertrack/android/library/b/b$b;>;"
    .local v9, listeners:Ljava/util/Set;,"Ljava/util/Set<Lorg/usertrack/android/library/b/b$b;>;"
    move-object v8, v9

    .end local v9           #listeners:Ljava/util/Set;,"Ljava/util/Set<Lorg/usertrack/android/library/b/b$b;>;"
    .restart local v8       #listeners:Ljava/util/Set;,"Ljava/util/Set<Lorg/usertrack/android/library/b/b$b;>;"
    move-object v5, v6

    .line 293
    .end local v6           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    :try_start_3
    iget-boolean v12, p0, Lorg/usertrack/android/library/b/d$a$a;->jE:Z

    if-eqz v12, :cond_1

    .line 295
    iget-object v12, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    invoke-static {v12}, Lorg/usertrack/android/library/b/d$a;->b(Lorg/usertrack/android/library/b/d$a;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 296
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/usertrack/android/library/b/d$a$a;->jE:Z

    .line 299
    :cond_1
    iget-object v12, p0, Lorg/usertrack/android/library/b/d$a$a;->jD:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    .line 313
    iget-object v12, p0, Lorg/usertrack/android/library/b/d$a$a;->jD:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 293
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :try_start_4
    iget-object v12, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    invoke-static {v12}, Lorg/usertrack/android/library/b/d$a;->c(Lorg/usertrack/android/library/b/d$a;)Z

    move-result v10

    .line 316
    .local v10, returnValue:Z
    if-eqz v10, :cond_3

    .line 317
    iget-object v12, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/usertrack/android/library/b/d$a;->h(Z)V

    .line 285
    :cond_3
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 321
    if-eqz v1, :cond_4

    .line 322
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, i:I
    :goto_2
    if-gez v2, :cond_8

    .line 333
    .end local v2           #i:I
    :cond_4
    return v10

    .end local v1           #hasListeners:Z
    .end local v10           #returnValue:Z
    :cond_5
    move v1, v12

    .line 286
    goto :goto_0

    .line 299
    .restart local v1       #hasListeners:Z
    :cond_6
    :try_start_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .local v3, k:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 302
    .local v11, v:Ljava/lang/Object;
    if-ne v11, p0, :cond_7

    .line 303
    iget-object v14, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    invoke-static {v14}, Lorg/usertrack/android/library/b/d$a;->b(Lorg/usertrack/android/library/b/d$a;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :goto_3
    if-eqz v1, :cond_2

    .line 309
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #k:Ljava/lang/String;
    .end local v11           #v:Ljava/lang/Object;
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v12

    .line 285
    .end local v1           #hasListeners:Z
    :catchall_1
    move-exception v12

    :goto_4
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v12

    .line 305
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #hasListeners:Z
    .restart local v3       #k:Ljava/lang/String;
    .restart local v11       #v:Ljava/lang/Object;
    :cond_7
    :try_start_7
    iget-object v14, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    invoke-static {v14}, Lorg/usertrack/android/library/b/d$a;->b(Lorg/usertrack/android/library/b/d$a;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 323
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #k:Ljava/lang/String;
    .end local v11           #v:Ljava/lang/Object;
    .restart local v2       #i:I
    .restart local v10       #returnValue:Z
    :cond_8
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 324
    .local v4, key:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_a

    .line 322
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 324
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/usertrack/android/library/b/b$b;

    .line 325
    .local v7, listener:Lorg/usertrack/android/library/b/b$b;
    if-eqz v7, :cond_9

    .line 327
    iget-object v13, p0, Lorg/usertrack/android/library/b/d$a$a;->qv:Lorg/usertrack/android/library/b/d$a;

    .line 326
    invoke-interface {v7, v13, v4}, Lorg/usertrack/android/library/b/b$b;->a(Lorg/usertrack/android/library/b/b;Ljava/lang/String;)V

    goto :goto_5

    .line 285
    .end local v2           #i:I
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #listener:Lorg/usertrack/android/library/b/b$b;
    .end local v10           #returnValue:Z
    .restart local v6       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4
.end method

.method public d(Ljava/lang/String;I)Lorg/usertrack/android/library/b/b$a;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/b/d$a$a;->jD:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    monitor-exit p0

    return-object p0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eo()Lorg/usertrack/android/library/b/b$a;
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/usertrack/android/library/b/d$a$a;->jE:Z

    .line 274
    monitor-exit p0

    return-object p0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lorg/usertrack/android/library/b/b$a;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/usertrack/android/library/b/d$a$a;->jD:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    monitor-exit p0

    return-object p0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
