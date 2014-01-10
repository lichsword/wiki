.class Lcom/taobao/statistic/module/data/Yolanda$a;
.super Ljava/lang/Thread;
.source "Yolanda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/module/data/Yolanda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private lK:Lcom/taobao/statistic/module/f/a;

.field private ly:Lcom/taobao/statistic/core/c;

.field private oj:I

.field private ok:Ljava/lang/String;

.field private ol:Lcom/taobao/statistic/module/data/c;

.field final synthetic om:Lcom/taobao/statistic/module/data/Yolanda;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/module/data/Yolanda;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter "url"
    .parameter "resourceIdentifier"
    .parameter "pIsDelay"

    .prologue
    const/4 v3, 0x0

    .line 114
    iput-object p1, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->om:Lcom/taobao/statistic/module/data/Yolanda;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->oj:I

    .line 107
    const-string v2, ""

    iput-object v2, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->ok:Ljava/lang/String;

    .line 108
    iput-object v3, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->lK:Lcom/taobao/statistic/module/f/a;

    .line 109
    iput-object v3, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->ly:Lcom/taobao/statistic/core/c;

    .line 110
    iput-object v3, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->ol:Lcom/taobao/statistic/module/data/c;

    .line 115
    iput-object p2, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->ok:Ljava/lang/String;

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".UTSystemConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/statistic/module/data/Yolanda;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, persistentDir:Ljava/lang/String;
    new-instance v2, Lcom/taobao/statistic/core/c;

    invoke-direct {v2, p1, p3, v1}, Lcom/taobao/statistic/core/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->ly:Lcom/taobao/statistic/core/c;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, lVariables:Lcom/taobao/statistic/core/q;
    if-eqz p4, :cond_0

    .line 122
    new-instance v0, Lcom/taobao/statistic/core/q;

    .end local v0           #lVariables:Lcom/taobao/statistic/core/q;
    invoke-direct {v0}, Lcom/taobao/statistic/core/q;-><init>()V

    .line 123
    .restart local v0       #lVariables:Lcom/taobao/statistic/core/q;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/taobao/statistic/core/q;->o(Z)V

    .line 125
    :cond_0
    new-instance v2, Lcom/taobao/statistic/module/f/a;

    iget-object v3, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->ly:Lcom/taobao/statistic/core/c;

    invoke-direct {v2, v3, v0}, Lcom/taobao/statistic/module/f/a;-><init>(Lcom/taobao/statistic/core/c;Lcom/taobao/statistic/core/q;)V

    iput-object v2, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->lK:Lcom/taobao/statistic/module/f/a;

    .line 126
    return-void
.end method


# virtual methods
.method public a(Lcom/taobao/statistic/module/data/c;)V
    .locals 0
    .parameter "uploadCompleteListener"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/taobao/statistic/module/data/Yolanda$a;->ol:Lcom/taobao/statistic/module/data/c;

    .line 131
    return-void
.end method

.method public run()V
    .locals 23

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 136
    .local v14, start:J
    const/16 v16, -0x1

    .line 137
    .local v16, status:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->ly:Lcom/taobao/statistic/core/c;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/taobao/statistic/core/c;->bl()Lcom/taobao/statistic/core/a/c;

    move-result-object v12

    .line 139
    .local v12, ppc:Lcom/taobao/statistic/core/a/c;
    const/4 v7, 0x0

    .line 142
    .local v7, gpr:Lcom/taobao/statistic/module/f/a$a;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v14

    const-wide/32 v21, 0xea60

    cmp-long v19, v19, v21

    if-lez v19, :cond_4

    .line 234
    :cond_0
    if-eqz v12, :cond_1

    .line 235
    invoke-virtual {v12}, Lcom/taobao/statistic/core/a/c;->clear()V

    .line 236
    invoke-virtual {v12}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 239
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->ly:Lcom/taobao/statistic/core/c;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/taobao/statistic/core/c;->bi()Lcom/taobao/statistic/core/a/c;

    move-result-object v4

    .line 241
    .local v4, commonPPC:Lcom/taobao/statistic/core/a/c;
    if-eqz v4, :cond_2

    .line 242
    const-string v19, "ISYRunning"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/taobao/statistic/core/a/c;->putLong(Ljava/lang/String;J)V

    .line 243
    invoke-virtual {v4}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 244
    const/16 v19, 0x2

    const-string v20, "BackgroundUpload"

    const-string v21, "set ISYRunning=0l"

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 247
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->ly:Lcom/taobao/statistic/core/c;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/taobao/statistic/core/c;->release()V

    .line 248
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/statistic/module/data/Yolanda$a;->ly:Lcom/taobao/statistic/core/c;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->ol:Lcom/taobao/statistic/module/data/c;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->ol:Lcom/taobao/statistic/module/data/c;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/taobao/statistic/module/data/c;->dE()V

    .line 252
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->om:Lcom/taobao/statistic/module/data/Yolanda;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/taobao/statistic/module/data/Yolanda;->c(Lcom/taobao/statistic/module/data/Yolanda;)V

    .line 253
    return-void

    .line 145
    .end local v4           #commonPPC:Lcom/taobao/statistic/core/a/c;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->lK:Lcom/taobao/statistic/module/f/a;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 146
    if-nez v7, :cond_5

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->lK:Lcom/taobao/statistic/module/f/a;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->ly:Lcom/taobao/statistic/core/c;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/taobao/statistic/module/data/Yolanda;->a(Lcom/taobao/statistic/core/c;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/taobao/statistic/module/f/a;->a(ZLjava/util/List;)Lcom/taobao/statistic/module/f/a$a;

    move-result-object v7

    .line 152
    :cond_5
    if-eqz v7, :cond_0

    .line 153
    invoke-virtual {v7}, Lcom/taobao/statistic/module/f/a$a;->dP()[B

    move-result-object v5

    .line 154
    .local v5, data:[B
    if-eqz v5, :cond_d

    array-length v0, v5

    move/from16 v19, v0

    if-lez v19, :cond_d

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->om:Lcom/taobao/statistic/module/data/Yolanda;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/taobao/statistic/module/data/Yolanda;->a(Lcom/taobao/statistic/module/data/Yolanda;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 156
    const-string v19, "BackgroundUpload"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->om:Lcom/taobao/statistic/module/data/Yolanda;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/taobao/statistic/module/data/Yolanda;->b(Lcom/taobao/statistic/module/data/Yolanda;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "UploadSize-->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v5

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v7}, Lcom/taobao/statistic/module/f/a$a;->dO()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_6

    .line 159
    invoke-virtual {v7}, Lcom/taobao/statistic/module/f/a$a;->dO()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 161
    .local v8, handler:Ljava/lang/String;
    const/16 v19, 0x2

    const-string v20, "BackgroundUpload"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Upload:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 168
    .end local v8           #handler:Ljava/lang/String;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v11, lMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v19, "resources"

    move-object/from16 v0, v19

    invoke-interface {v11, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->ok:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Lcom/taobao/statistic/module/data/b;->a(ILjava/lang/String;Ljava/util/Map;)[B

    move-result-object v13

    .line 174
    .local v13, result:[B
    if-eqz v13, :cond_d

    array-length v0, v13

    move/from16 v19, v0

    if-lez v19, :cond_d

    .line 175
    const/16 v17, 0x0

    .line 177
    .local v17, strResult:Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    array-length v0, v13

    move/from16 v20, v0

    const-string v21, "UTF-8"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v13, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v17           #strResult:Ljava/lang/String;
    .local v18, strResult:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->om:Lcom/taobao/statistic/module/data/Yolanda;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/taobao/statistic/module/data/Yolanda;->a(Lcom/taobao/statistic/module/data/Yolanda;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 180
    const-string v19, "BackgroundUpload"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->om:Lcom/taobao/statistic/module/data/Yolanda;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/taobao/statistic/module/data/Yolanda;->b(Lcom/taobao/statistic/module/data/Yolanda;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    move-object/from16 v17, v18

    .line 187
    .end local v18           #strResult:Ljava/lang/String;
    .restart local v17       #strResult:Ljava/lang/String;
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/taobao/statistic/d/a/a;->R(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 189
    invoke-virtual {v7}, Lcom/taobao/statistic/module/f/a$a;->dO()Ljava/util/ArrayList;

    move-result-object v9

    .line 191
    .local v9, handlers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->lK:Lcom/taobao/statistic/module/f/a;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/taobao/statistic/module/f/a;->a(Lcom/taobao/statistic/module/f/a$a;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->om:Lcom/taobao/statistic/module/data/Yolanda;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/taobao/statistic/module/data/Yolanda;->a(Lcom/taobao/statistic/module/data/Yolanda;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 194
    const-string v19, "BackgroundUpload"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->om:Lcom/taobao/statistic/module/data/Yolanda;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/taobao/statistic/module/data/Yolanda;->b(Lcom/taobao/statistic/module/data/Yolanda;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ReleaseRecordPackage"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_8
    if-eqz v12, :cond_a

    .line 199
    if-eqz v9, :cond_a

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_a

    .line 201
    invoke-virtual {v12}, Lcom/taobao/statistic/core/a/c;->reload()V

    .line 202
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 203
    .restart local v8       #handler:Ljava/lang/String;
    invoke-virtual {v12, v8}, Lcom/taobao/statistic/core/a/c;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 183
    .end local v8           #handler:Ljava/lang/String;
    .end local v9           #handlers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .line 184
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    :goto_4
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 205
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v9       #handlers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v12}, Lcom/taobao/statistic/core/a/c;->commit()Z

    .line 208
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_a
    const/16 v16, 0x1

    .line 209
    const/4 v7, 0x0

    .line 210
    goto/16 :goto_0

    .line 212
    .end local v9           #handlers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 213
    :cond_c
    const/16 v16, 0x0

    .line 224
    .end local v11           #lMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13           #result:[B
    .end local v17           #strResult:Ljava/lang/String;
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->oj:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Lcom/taobao/statistic/module/data/Yolanda$a;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->oj:I

    move/from16 v19, v0

    const/16 v20, 0x7d0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/taobao/statistic/module/data/Yolanda$a;->oj:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/taobao/statistic/module/data/Yolanda$a;->oj:I

    goto/16 :goto_0

    .line 225
    :catch_1
    move-exception v6

    .line 226
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 183
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v11       #lMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v13       #result:[B
    .restart local v18       #strResult:Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object/from16 v17, v18

    .end local v18           #strResult:Ljava/lang/String;
    .restart local v17       #strResult:Ljava/lang/String;
    goto :goto_4
.end method
