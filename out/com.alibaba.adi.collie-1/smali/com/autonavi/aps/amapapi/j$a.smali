.class final Lcom/autonavi/aps/amapapi/j$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/aps/amapapi/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/autonavi/aps/amapapi/AmapLoc;

.field final synthetic b:Lcom/autonavi/aps/amapapi/j;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/autonavi/aps/amapapi/j;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/j$a;->b:Lcom/autonavi/aps/amapapi/j;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 104
    new-instance v0, Lcom/autonavi/aps/amapapi/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/AmapLoc;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/aps/amapapi/j;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/autonavi/aps/amapapi/j$a;-><init>(Lcom/autonavi/aps/amapapi/j;)V

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 121
    const-string v0, "retype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setRetype(Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "adcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setAdcode(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    const-string v0, "citycode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setCitycode(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    const-string v0, "radius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setAccuracy(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    .line 132
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setAccuracy(F)V

    goto :goto_0

    .line 134
    :cond_4
    const-string v0, "cenx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "#.000000"

    invoke-static {v0, v1}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/aps/amapapi/AmapLoc;->setLon(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/aps/amapapi/AmapLoc;->setLon(D)V

    goto :goto_0

    .line 142
    :cond_5
    const-string v0, "ceny"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "#.000000"

    invoke-static {v0, v1}, Lcom/autonavi/aps/amapapi/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/aps/amapapi/AmapLoc;->setLat(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 147
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/Utils;->printE(Ljava/lang/Throwable;)V

    .line 148
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/aps/amapapi/AmapLoc;->setLat(D)V

    goto/16 :goto_0

    .line 150
    :cond_6
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setDesc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_7
    const-string v0, "country"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_8
    const-string v0, "province"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setProvince(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_9
    const-string v0, "city"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 157
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setCity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_a
    const-string v0, "road"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 159
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setRoad(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_b
    const-string v0, "street"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setStreet(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_c
    const-string v0, "poiname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->a:Lcom/autonavi/aps/amapapi/AmapLoc;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/AmapLoc;->setPoiname(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/j$a;->c:Ljava/lang/String;

    .line 116
    return-void
.end method
