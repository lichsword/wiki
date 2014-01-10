.class public Lcom/taobao/statistic/module/f/a;
.super Ljava/lang/Object;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/module/f/a$b;,
        Lcom/taobao/statistic/module/f/a$a;
    }
.end annotation


# instance fields
.field private iC:Lcom/taobao/statistic/core/q;

.field private ly:Lcom/taobao/statistic/core/c;

.field private oF:Ljava/io/ByteArrayOutputStream;

.field private oG:Lcom/taobao/statistic/module/f/a$b;

.field private oH:I


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/c;Lcom/taobao/statistic/core/q;)V
    .locals 3
    .parameter "hardConfig"
    .parameter "pVariables"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc00

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/statistic/module/f/a;->oF:Ljava/io/ByteArrayOutputStream;

    .line 35
    iput-object v2, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    .line 36
    iput-object v2, p0, Lcom/taobao/statistic/module/f/a;->iC:Lcom/taobao/statistic/core/q;

    .line 37
    new-instance v0, Lcom/taobao/statistic/module/f/a$b;

    invoke-direct {v0}, Lcom/taobao/statistic/module/f/a$b;-><init>()V

    iput-object v0, p0, Lcom/taobao/statistic/module/f/a;->oG:Lcom/taobao/statistic/module/f/a$b;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/statistic/module/f/a;->oH:I

    .line 42
    iput-object p1, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    .line 43
    iput-object p2, p0, Lcom/taobao/statistic/module/f/a;->iC:Lcom/taobao/statistic/core/q;

    .line 45
    invoke-virtual {p0}, Lcom/taobao/statistic/module/f/a;->dN()V

    .line 46
    return-void
.end method

.method private c([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "resources"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/taobao/statistic/module/f/a;->oG:Lcom/taobao/statistic/module/f/a$b;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 101
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(ZLjava/util/List;)Lcom/taobao/statistic/module/f/a$a;
    .locals 24
    .parameter "isInclude"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/statistic/module/f/a$a;"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, filtedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/taobao/statistic/core/c;->bk()Lcom/taobao/statistic/core/a/c;

    move-result-object v13

    .line 118
    .local v13, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v13, :cond_11

    .line 120
    invoke-virtual {v13}, Lcom/taobao/statistic/core/a/c;->reload()V

    .line 121
    invoke-virtual {v13}, Lcom/taobao/statistic/core/a/c;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 122
    .local v3, allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v20

    if-lez v20, :cond_11

    .line 123
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 124
    .local v17, resources:[Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/taobao/statistic/module/f/a;->c([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 126
    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_11

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->oF:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 128
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v16, resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, ""

    .line 130
    .local v12, pName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 131
    .local v6, bSwitch:Z
    const/4 v14, 0x0

    .line 133
    .local v14, recordCount:I
    move-object/from16 v4, v17

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_4

    aget-object v15, v4, v9

    .line 134
    .local v15, resource:Ljava/lang/String;
    move-object v10, v15

    .line 135
    .local v10, key:Ljava/lang/String;
    invoke-static {v10}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    const-string v20, "t"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->iC:Lcom/taobao/statistic/core/q;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->iC:Lcom/taobao/statistic/core/q;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/taobao/statistic/core/q;->cJ()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 141
    const-string v20, "delay"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 147
    :cond_2
    if-eqz v6, :cond_8

    .line 148
    const-string v20, "_9_"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "_8_"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 150
    :cond_3
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 211
    .end local v10           #key:Ljava/lang/String;
    .end local v15           #resource:Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_f

    .line 212
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 213
    .local v8, handler:Ljava/lang/String;
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 215
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 115
    .end local v3           #allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #bSwitch:Z
    .end local v8           #handler:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #len$:I
    .end local v12           #pName:Ljava/lang/String;
    .end local v13           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v14           #recordCount:I
    .end local v16           #resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #resources:[Ljava/lang/String;
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 154
    .restart local v3       #allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #bSwitch:Z
    .local v9, i$:I
    .restart local v10       #key:Ljava/lang/String;
    .restart local v11       #len$:I
    .restart local v12       #pName:Ljava/lang/String;
    .restart local v13       #ppc:Lcom/taobao/statistic/core/a/c;
    .restart local v14       #recordCount:I
    .restart local v15       #resource:Ljava/lang/String;
    .restart local v16       #resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #resources:[Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v20, "_9_"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 155
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 159
    :cond_7
    const-string v20, "_8_"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 160
    const/16 v20, 0x6

    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 165
    :cond_8
    if-eqz p2, :cond_a

    .line 167
    if-eqz p1, :cond_9

    .line 169
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 170
    const/16 v20, 0x2

    const-string v21, "BackgroundUpload"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skip:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 177
    :cond_9
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 178
    const/16 v20, 0x2

    const-string v21, "UploadLock"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skip:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 184
    :cond_a
    invoke-static {v12}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 185
    const-string v20, "_9_"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "_8_"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 187
    :cond_b
    const-string v20, "_9_"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 188
    const-string v12, "_9_"

    .line 192
    :cond_c
    :goto_3
    const/4 v6, 0x1

    .line 195
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 196
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 197
    .local v19, value:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 198
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 199
    .local v18, sValue:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lorg/usertrack/a/a/a/a/a;->ar(Ljava/lang/String;)[B

    move-result-object v5

    .line 201
    .local v5, bBase64Buffer:[B
    if-eqz v5, :cond_0

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->oF:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v20

    array-length v0, v5

    move/from16 v21, v0

    add-int v20, v20, v21

    const/16 v21, 0xc00

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->oF:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    array-length v0, v5

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 205
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 189
    .end local v5           #bBase64Buffer:[B
    .end local v18           #sValue:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/Object;
    :cond_e
    const-string v20, "_8_"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 190
    const-string v12, "_8_"

    goto :goto_3

    .line 219
    .end local v9           #i$:I
    .end local v10           #key:Ljava/lang/String;
    .end local v15           #resource:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->oF:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v20

    if-lez v20, :cond_10

    .line 221
    new-instance v7, Lcom/taobao/statistic/module/f/a$a;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/taobao/statistic/module/f/a$a;-><init>(Lcom/taobao/statistic/module/f/a;)V

    .line 222
    .local v7, gpr:Lcom/taobao/statistic/module/f/a$a;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->oF:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/taobao/statistic/module/f/a$a;->setData([B)V

    .line 223
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/taobao/statistic/module/f/a$a;->a(Ljava/util/ArrayList;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->oF:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .end local v3           #allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #bSwitch:Z
    .end local v7           #gpr:Lcom/taobao/statistic/module/f/a$a;
    .end local v11           #len$:I
    .end local v12           #pName:Ljava/lang/String;
    .end local v13           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v14           #recordCount:I
    .end local v16           #resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #resources:[Ljava/lang/String;
    :goto_4
    monitor-exit p0

    return-object v7

    .line 227
    .restart local v3       #allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #bSwitch:Z
    .restart local v11       #len$:I
    .restart local v12       #pName:Ljava/lang/String;
    .restart local v13       #ppc:Lcom/taobao/statistic/core/a/c;
    .restart local v14       #recordCount:I
    .restart local v16       #resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #resources:[Ljava/lang/String;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/f/a;->oF:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 228
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    .end local v3           #allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #bSwitch:Z
    .end local v11           #len$:I
    .end local v12           #pName:Ljava/lang/String;
    .end local v13           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v14           #recordCount:I
    .end local v16           #resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #resources:[Ljava/lang/String;
    :cond_11
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, filtedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    if-eqz v6, :cond_2

    .line 65
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v5, resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v6}, Lcom/taobao/statistic/core/c;->bk()Lcom/taobao/statistic/core/a/c;

    move-result-object v4

    .line 68
    .local v4, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v4, :cond_3

    .line 70
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->reload()V

    .line 71
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 72
    .local v0, allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 74
    .local v2, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "t"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    if-eqz p1, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    const/4 v6, 0x2

    const-string v7, "GetAllRecordList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip Record:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0           #allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v5           #resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    :cond_3
    return-object v5
.end method

.method public a(Lcom/taobao/statistic/module/f/a$a;)V
    .locals 6
    .parameter "gpr"

    .prologue
    const/4 v5, 0x0

    .line 243
    iget-object v4, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    if-eqz v4, :cond_2

    .line 244
    iget-object v4, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v4}, Lcom/taobao/statistic/core/c;->bk()Lcom/taobao/statistic/core/a/c;

    move-result-object v1

    .line 246
    .local v1, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v1}, Lcom/taobao/statistic/core/a/c;->reload()V

    .line 248
    invoke-virtual {p1}, Lcom/taobao/statistic/module/f/a$a;->dO()Ljava/util/ArrayList;

    move-result-object v3

    .line 249
    .local v3, resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    .local v2, resourceHandler:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/taobao/statistic/core/a/c;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v2           #resourceHandler:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 255
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1, v5}, Lcom/taobao/statistic/module/f/a$a;->setData([B)V

    .line 256
    invoke-virtual {p1, v5}, Lcom/taobao/statistic/module/f/a$a;->a(Ljava/util/ArrayList;)V

    .line 259
    .end local v1           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v3           #resourceHandlers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 268
    iget-object v5, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v5}, Lcom/taobao/statistic/core/c;->bk()Lcom/taobao/statistic/core/a/c;

    move-result-object v2

    .line 270
    .local v2, ppc:Lcom/taobao/statistic/core/a/c;
    iget-object v5, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v5}, Lcom/taobao/statistic/core/c;->bm()Lcom/taobao/statistic/core/a/c;

    move-result-object v3

    .line 272
    .local v3, ppc2:Lcom/taobao/statistic/core/a/c;
    iget-object v5, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v5}, Lcom/taobao/statistic/core/c;->bl()Lcom/taobao/statistic/core/a/c;

    move-result-object v4

    .line 274
    .local v4, ppc3:Lcom/taobao/statistic/core/a/c;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/taobao/statistic/core/a/c;->remove(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3, v1}, Lcom/taobao/statistic/core/a/c;->remove(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v4, v1}, Lcom/taobao/statistic/core/a/c;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 281
    invoke-virtual {v3}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 282
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 285
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v3           #ppc2:Lcom/taobao/statistic/core/a/c;
    .end local v4           #ppc3:Lcom/taobao/statistic/core/a/c;
    :cond_1
    return-void
.end method

.method public dN()V
    .locals 17

    .prologue
    .line 300
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 301
    .local v6, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 302
    .local v9, packageCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    if-eqz v15, :cond_2

    .line 303
    const/4 v13, 0x0

    .line 304
    .local v13, size:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v15}, Lcom/taobao/statistic/core/c;->bk()Lcom/taobao/statistic/core/a/c;

    move-result-object v10

    .line 306
    .local v10, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v10, :cond_2

    .line 308
    invoke-virtual {v10}, Lcom/taobao/statistic/core/a/c;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 309
    .local v1, allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v1, :cond_1

    .line 310
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 311
    .local v4, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 312
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 314
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 315
    .local v5, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 316
    .local v14, value:Ljava/lang/Object;
    invoke-static {v5}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 318
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v14

    .line 319
    check-cast v12, Ljava/lang/String;

    .line 320
    .local v12, sValue:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v13, v15

    .line 321
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 326
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4           #iter:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v12           #sValue:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/Object;
    :cond_1
    if-lez v13, :cond_2

    .line 327
    mul-int/lit8 v15, v13, 0x3

    div-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/taobao/statistic/module/f/a;->oH:I

    .line 332
    .end local v1           #allResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v10           #ppc:Lcom/taobao/statistic/core/a/c;
    .end local v13           #size:I
    :cond_2
    const/16 v15, 0x32

    if-le v9, v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/taobao/statistic/module/f/a;->oH:I

    const/high16 v16, 0x4

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 334
    if-eqz v6, :cond_5

    .line 335
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 337
    .local v8, needRemoveKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    div-int/lit8 v7, v9, 0x32

    .line 339
    .local v7, needRemoveCount:I
    const/4 v11, 0x0

    .line 340
    .local v11, removeCount:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 341
    .restart local v5       #key:Ljava/lang/String;
    if-le v11, v7, :cond_6

    .line 356
    .end local v5           #key:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/taobao/statistic/module/f/a;->b(Ljava/util/List;)V

    .line 359
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #needRemoveCount:I
    .end local v8           #needRemoveKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #removeCount:I
    :cond_5
    return-void

    .line 345
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v7       #needRemoveCount:I
    .restart local v8       #needRemoveKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #removeCount:I
    :cond_6
    const-string v15, "_5_"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "_4_"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "_3_"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "_2_"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "_1_"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 349
    :cond_7
    const/4 v15, 0x2

    const-string v16, "RemoveRecordPackage"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 351
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pSaveKey"
    .parameter "packageData"

    .prologue
    .line 50
    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/taobao/statistic/module/f/a;->ly:Lcom/taobao/statistic/core/c;

    invoke-virtual {v1}, Lcom/taobao/statistic/core/c;->bk()Lcom/taobao/statistic/core/a/c;

    move-result-object v0

    .line 54
    .local v0, ppc:Lcom/taobao/statistic/core/a/c;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->reload()V

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 61
    .end local v0           #ppc:Lcom/taobao/statistic/core/a/c;
    :cond_0
    return-void
.end method
