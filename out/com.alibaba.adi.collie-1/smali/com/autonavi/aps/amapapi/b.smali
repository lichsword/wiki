.class public final Lcom/autonavi/aps/amapapi/b;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/aps/amapapi/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/autonavi/aps/amapapi/b;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/aps/amapapi/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/aps/amapapi/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/aps/amapapi/b;->a:Lcom/autonavi/aps/amapapi/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/b;->b:Ljava/util/Hashtable;

    .line 16
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/b;->c:Ljava/util/Hashtable;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/b;->d:J

    .line 21
    return-void
.end method

.method private static a([D[D)D
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 352
    .line 355
    const/4 v0, 0x0

    move-wide v3, v1

    move-wide v5, v1

    :goto_0
    array-length v7, p0

    if-lt v0, v7, :cond_0

    .line 360
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    div-double v0, v5, v0

    return-wide v0

    .line 356
    :cond_0
    aget-wide v7, p0, v0

    aget-wide v9, p0, v0

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 357
    aget-wide v7, p1, v0

    aget-wide v9, p1, v0

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 358
    aget-wide v7, p0, v0

    aget-wide v9, p1, v0

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/b$a;
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    const/4 v6, 0x0

    .line 211
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 212
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 213
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 214
    const/4 v1, 0x0

    .line 218
    const-string v2, "mem"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v7, v1

    .line 223
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move-object v1, v6

    .line 294
    :goto_1
    invoke-virtual {v8}, Ljava/util/Hashtable;->clear()V

    .line 298
    invoke-virtual {v9}, Ljava/util/Hashtable;->clear()V

    .line 300
    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 302
    return-object v1

    .line 220
    :cond_2
    const-string v2, "db"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 221
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v7, v1

    .line 223
    goto :goto_0

    .line 224
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/aps/amapapi/b$a;

    .line 230
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/b$a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/b$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ",access"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/16 v4, 0x11

    if-ge v3, v4, :cond_6

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 245
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/b$a;->a()Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/AmapLoc;->getAccuracy()F

    .line 257
    :cond_5
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/autonavi/aps/amapapi/b;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/autonavi/aps/amapapi/b;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 259
    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 260
    invoke-virtual {v8}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 263
    invoke-virtual {v9}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 266
    invoke-virtual {v10}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 267
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v2

    new-array v12, v2, [D

    .line 268
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v2

    new-array v13, v2, [D

    .line 269
    const/4 v2, 0x0

    .line 270
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v3, v2

    .line 271
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 277
    invoke-interface {v11}, Ljava/util/Set;->clear()V

    .line 278
    invoke-static {v12, v13}, Lcom/autonavi/aps/amapapi/b;->a([D[D)D

    move-result-wide v2

    .line 282
    const-string v4, "mem"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 283
    const-wide v4, 0x3feb333340000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    goto/16 :goto_1

    .line 239
    :cond_6
    const-string v4, ",access"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    add-int/lit8 v4, v3, -0x11

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",access"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 260
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    const-string v4, ""

    invoke-virtual {v10, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 263
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    const-string v4, ""

    invoke-virtual {v10, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 272
    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-wide/high16 v4, 0x3ff0

    :goto_6
    aput-wide v4, v12, v3

    .line 274
    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/high16 v4, 0x3ff0

    :goto_7
    aput-wide v4, v13, v3

    .line 275
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_5

    .line 273
    :cond_b
    const-wide/16 v4, 0x0

    goto :goto_6

    .line 274
    :cond_c
    const-wide/16 v4, 0x0

    goto :goto_7

    .line 287
    :cond_d
    const-string v4, "db"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const-wide v4, 0x3feb333340000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    goto/16 :goto_1

    :cond_e
    move-object v7, v1

    goto/16 :goto_0
.end method

.method public static a()Lcom/autonavi/aps/amapapi/b;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/autonavi/aps/amapapi/b;->a:Lcom/autonavi/aps/amapapi/b;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/autonavi/aps/amapapi/b;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/b;-><init>()V

    sput-object v0, Lcom/autonavi/aps/amapapi/b;->a:Lcom/autonavi/aps/amapapi/b;

    .line 33
    :cond_0
    sget-object v0, Lcom/autonavi/aps/amapapi/b;->a:Lcom/autonavi/aps/amapapi/b;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    .line 335
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 336
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 341
    return-void

    .line 336
    :cond_0
    aget-object v3, v1, v0

    .line 337
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 338
    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/b;->d:J

    sub-long/2addr v2, v4

    .line 156
    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/b;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 158
    iget-object v4, p0, Lcom/autonavi/aps/amapapi/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    const/16 v5, 0x168

    if-le v4, v5, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/AmapLoc;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 96
    const-string v0, "mem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/autonavi/aps/amapapi/Const;->i:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/b;->b()V

    move-object v0, v1

    .line 135
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string v0, "#gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_1
    const-string v0, "mem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/b;->b()V

    move-object v0, v1

    .line 108
    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "#cellwifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 116
    const-string v0, "#cellwifi"

    invoke-direct {p0, p2, v0, p3}, Lcom/autonavi/aps/amapapi/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/b$a;

    move-result-object v0

    .line 117
    if-nez v0, :cond_3

    .line 135
    :cond_3
    :goto_1
    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_0

    .line 118
    :cond_4
    const-string v0, "#wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 123
    const-string v0, "#wifi"

    invoke-direct {p0, p2, v0, p3}, Lcom/autonavi/aps/amapapi/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/b$a;

    move-result-object v0

    .line 124
    if-nez v0, :cond_3

    goto :goto_1

    .line 125
    :cond_5
    const-string v0, "#cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_8

    .line 130
    const-string v0, "mem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/b$a;

    goto :goto_1

    .line 132
    :cond_6
    const-string v0, "db"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/b$a;

    goto :goto_1

    .line 135
    :cond_7
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/b$a;->a()Lcom/autonavi/aps/amapapi/AmapLoc;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 374
    :try_start_0
    invoke-static {}, Lcom/autonavi/aps/amapapi/d;->a()Lcom/autonavi/aps/amapapi/d;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/aps/amapapi/d;->a(Ljava/util/Hashtable;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/AmapLoc;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    sget-boolean v1, Lcom/autonavi/aps/amapapi/Const;->i:Z

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/b;->b()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_4

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p2}, Lcom/autonavi/aps/amapapi/AmapLoc;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/autonavi/aps/amapapi/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/b;->b()V

    .line 70
    :cond_3
    invoke-static {}, Lcom/autonavi/aps/amapapi/Utils;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/b;->d:J

    .line 71
    new-instance v0, Lcom/autonavi/aps/amapapi/b$a;

    invoke-direct {v0, p0}, Lcom/autonavi/aps/amapapi/b$a;-><init>(Lcom/autonavi/aps/amapapi/b;)V

    .line 72
    const-string v1, "mem"

    invoke-virtual {p2, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setType(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p2}, Lcom/autonavi/aps/amapapi/b$a;->a(Lcom/autonavi/aps/amapapi/AmapLoc;)V

    .line 74
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/b$a;->a(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :try_start_0
    invoke-static {}, Lcom/autonavi/aps/amapapi/d;->a()Lcom/autonavi/aps/amapapi/d;

    invoke-static {p1, p2, p3, p4}, Lcom/autonavi/aps/amapapi/d;->a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/AmapLoc;Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 78
    iget-object v1, p0, Lcom/autonavi/aps/amapapi/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    :cond_4
    const/4 v1, 0x1

    const-string v2, "#network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p2}, Lcom/autonavi/aps/amapapi/AmapLoc;->getLon()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/b;->d:J

    .line 194
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 198
    return-void
.end method
