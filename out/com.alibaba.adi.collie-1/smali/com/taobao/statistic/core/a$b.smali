.class public Lcom/taobao/statistic/core/a$b;
.super Ljava/lang/Object;
.source "Exec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic iU:Lcom/taobao/statistic/core/a;

.field private iV:Ljava/lang/String;

.field private iW:Ljava/lang/String;

.field private iX:[Ljava/lang/String;

.field private iY:Ljava/util/Properties;

.field private iZ:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/taobao/statistic/core/a$b;->iU:Lcom/taobao/statistic/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/a$b;->iZ:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 0
    .parameter "pPreKvs"

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/taobao/statistic/core/a$b;->iX:[Ljava/lang/String;

    .line 1184
    return-void
.end method

.method public aQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/taobao/statistic/core/a$b;->iV:Ljava/lang/String;

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/taobao/statistic/core/a$b;->iW:Ljava/lang/String;

    return-object v0
.end method

.method public aS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/taobao/statistic/core/a$b;->iX:[Ljava/lang/String;

    return-object v0
.end method

.method public aT()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/taobao/statistic/core/a$b;->iZ:Ljava/util/Date;

    return-object v0
.end method

.method public aU()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/taobao/statistic/core/a$b;->iY:Ljava/util/Properties;

    return-object v0
.end method

.method public b(Ljava/util/Date;)V
    .locals 0
    .parameter "pOptTime"

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/taobao/statistic/core/a$b;->iZ:Ljava/util/Date;

    .line 1192
    return-void
.end method

.method public b(Ljava/util/Properties;)V
    .locals 0
    .parameter "pKvs"

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/taobao/statistic/core/a$b;->iY:Ljava/util/Properties;

    .line 1200
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter "pPrePageName"

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/taobao/statistic/core/a$b;->iV:Ljava/lang/String;

    .line 1168
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter "pPreControlName"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/taobao/statistic/core/a$b;->iW:Ljava/lang/String;

    .line 1176
    return-void
.end method
