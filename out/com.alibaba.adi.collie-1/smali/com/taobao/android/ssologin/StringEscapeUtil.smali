.class public Lcom/taobao/android/ssologin/StringEscapeUtil;
.super Ljava/lang/Object;
.source "StringEscapeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "entities"
    .parameter "str"

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 114
    const/4 p1, 0x0

    .line 126
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 118
    .restart local p1
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 120
    .local v1, out:Ljava/io/StringWriter;
    invoke-static {p0, p1, v1}, Lcom/taobao/android/ssologin/StringEscapeUtil;->escapeEntitiesInternal(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 125
    .end local v1           #out:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static escapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "entities"
    .parameter "str"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {p0, p1, p2}, Lcom/taobao/android/ssologin/StringEscapeUtil;->escapeEntitiesInternal(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    .line 141
    return-void
.end method

.method private static escapeEntitiesInternal(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)Z
    .locals 7
    .parameter "entities"
    .parameter "str"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v3, 0x0

    .line 265
    .local v3, needToChange:Z
    if-nez p0, :cond_0

    .line 266
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The Entities must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_0
    if-nez p2, :cond_1

    .line 270
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The Writer must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    :cond_1
    if-nez p1, :cond_2

    move v4, v3

    .line 293
    .end local v3           #needToChange:Z
    .local v4, needToChange:I
    :goto_0
    return v4

    .line 277
    .end local v4           #needToChange:I
    .restart local v3       #needToChange:Z
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_3

    move v4, v3

    .line 293
    .restart local v4       #needToChange:I
    goto :goto_0

    .line 278
    .end local v4           #needToChange:I
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/taobao/android/ssologin/Entities;->getEntityName(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, entityName:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 282
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 277
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    :cond_4
    const/16 v5, 0x26

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    .line 285
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 286
    const/16 v5, 0x3b

    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(I)V

    .line 289
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 42
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40:Lcom/taobao/android/ssologin/Entities;

    invoke-static {v0, p0}, Lcom/taobao/android/ssologin/StringEscapeUtil;->escapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeHtml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "str"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40:Lcom/taobao/android/ssologin/Entities;

    invoke-static {v0, p0, p1}, Lcom/taobao/android/ssologin/StringEscapeUtil;->escapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    .line 67
    return-void
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 83
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->XML:Lcom/taobao/android/ssologin/Entities;

    invoke-static {v0, p0}, Lcom/taobao/android/ssologin/StringEscapeUtil;->escapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "str"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->XML:Lcom/taobao/android/ssologin/Entities;

    invoke-static {v0, p0, p1}, Lcom/taobao/android/ssologin/StringEscapeUtil;->escapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    .line 103
    return-void
.end method

.method public static unescapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "entities"
    .parameter "str"

    .prologue
    .line 219
    if-nez p1, :cond_1

    .line 220
    const/4 p1, 0x0

    .line 232
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 224
    .restart local p1
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 226
    .local v1, out:Ljava/io/StringWriter;
    invoke-static {p0, p1, v1}, Lcom/taobao/android/ssologin/StringEscapeUtil;->unescapeEntitiesInternal(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 231
    .end local v1           #out:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static unescapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "entities"
    .parameter "str"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {p0, p1, p2}, Lcom/taobao/android/ssologin/StringEscapeUtil;->unescapeEntitiesInternal(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)Z

    .line 250
    return-void
.end method

.method private static unescapeEntitiesInternal(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)Z
    .locals 13
    .parameter "entities"
    .parameter "str"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v7, 0x0

    .line 312
    .local v7, needToChange:Z
    if-nez p2, :cond_0

    .line 313
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "The Writer must not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 316
    :cond_0
    if-nez p1, :cond_1

    move v8, v7

    .line 397
    .end local v7           #needToChange:Z
    .local v8, needToChange:I
    :goto_0
    return v8

    .line 320
    .end local v8           #needToChange:I
    .restart local v7       #needToChange:Z
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v6, v11, :cond_2

    move v8, v7

    .line 397
    .restart local v8       #needToChange:I
    goto :goto_0

    .line 321
    .end local v8           #needToChange:I
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    .local v0, ch:C
    const/16 v11, 0x26

    if-ne v0, v11, :cond_b

    .line 325
    const/16 v11, 0x3b

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 327
    .local v10, semi:I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v10, -0x1

    if-lt v11, v12, :cond_4

    .line 328
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 320
    .end local v10           #semi:I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 333
    .restart local v10       #semi:I
    :cond_4
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x23

    if-ne v11, v12, :cond_8

    .line 334
    add-int/lit8 v5, v6, 0x2

    .line 335
    .local v5, firstCharIndex:I
    const/16 v9, 0xa

    .line 337
    .local v9, radix:I
    add-int/lit8 v11, v10, -0x1

    if-lt v5, v11, :cond_5

    .line 338
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 339
    const/16 v11, 0x23

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 340
    add-int/lit8 v6, v6, 0x1

    .line 341
    goto :goto_2

    .line 344
    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 346
    .local v4, firstChar:C
    const/16 v11, 0x78

    if-eq v4, v11, :cond_6

    const/16 v11, 0x58

    if-ne v4, v11, :cond_7

    .line 347
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 348
    const/16 v9, 0x10

    .line 350
    add-int/lit8 v11, v10, -0x1

    if-lt v5, v11, :cond_7

    .line 351
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 352
    const/16 v11, 0x23

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 353
    add-int/lit8 v6, v6, 0x1

    .line 354
    goto :goto_2

    .line 359
    :cond_7
    :try_start_0
    invoke-virtual {p1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 361
    .local v3, entityValue:I
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    const/4 v7, 0x1

    .line 391
    .end local v4           #firstChar:C
    .end local v5           #firstCharIndex:I
    .end local v9           #radix:I
    :goto_3
    move v6, v10

    .line 392
    goto :goto_2

    .line 365
    .end local v3           #entityValue:I
    .restart local v4       #firstChar:C
    .restart local v5       #firstCharIndex:I
    .restart local v9       #radix:I
    :catch_0
    move-exception v1

    .line 366
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 367
    const/16 v11, 0x23

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 368
    add-int/lit8 v6, v6, 0x1

    .line 369
    goto :goto_2

    .line 372
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v4           #firstChar:C
    .end local v5           #firstCharIndex:I
    .end local v9           #radix:I
    :cond_8
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, entityName:Ljava/lang/String;
    const/4 v3, -0x1

    .line 375
    .restart local v3       #entityValue:I
    if-eqz p0, :cond_9

    .line 376
    invoke-virtual {p0, v2}, Lcom/taobao/android/ssologin/Entities;->getEntityValue(Ljava/lang/String;)I

    move-result v3

    .line 379
    :cond_9
    const/4 v11, -0x1

    if-ne v3, v11, :cond_a

    .line 380
    const/16 v11, 0x26

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    .line 381
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 382
    const/16 v11, 0x3b

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    .line 384
    :cond_a
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 387
    const/4 v7, 0x1

    goto :goto_3

    .line 393
    .end local v2           #entityName:Ljava/lang/String;
    .end local v3           #entityValue:I
    .end local v10           #semi:I
    :cond_b
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2
.end method

.method public static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 156
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40:Lcom/taobao/android/ssologin/Entities;

    invoke-static {v0, p0}, Lcom/taobao/android/ssologin/StringEscapeUtil;->unescapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeHtml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "str"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->HTML40:Lcom/taobao/android/ssologin/Entities;

    invoke-static {v0, p0, p1}, Lcom/taobao/android/ssologin/StringEscapeUtil;->unescapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    .line 175
    return-void
.end method

.method public static unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 190
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->XML:Lcom/taobao/android/ssologin/Entities;

    invoke-static {v0, p0}, Lcom/taobao/android/ssologin/StringEscapeUtil;->unescapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeXml(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .parameter "str"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    sget-object v0, Lcom/taobao/android/ssologin/Entities;->XML:Lcom/taobao/android/ssologin/Entities;

    invoke-static {v0, p0, p1}, Lcom/taobao/android/ssologin/StringEscapeUtil;->unescapeEntities(Lcom/taobao/android/ssologin/Entities;Ljava/lang/String;Ljava/io/Writer;)V

    .line 209
    return-void
.end method
