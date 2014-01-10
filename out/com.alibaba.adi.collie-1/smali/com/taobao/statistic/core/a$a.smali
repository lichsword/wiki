.class public Lcom/taobao/statistic/core/a$a;
.super Ljava/lang/Object;
.source "Exec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private iR:J

.field private iS:Ljava/util/Properties;

.field private iT:Ljava/lang/String;

.field final synthetic iU:Lcom/taobao/statistic/core/a;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/core/a;)V
    .locals 2
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/taobao/statistic/core/a$a;->iU:Lcom/taobao/statistic/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/statistic/core/a$a;->iR:J

    .line 1120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/core/a$a;->iS:Ljava/util/Properties;

    .line 1121
    const-string v0, "begin"

    iput-object v0, p0, Lcom/taobao/statistic/core/a$a;->iT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aN()V
    .locals 1

    .prologue
    .line 1140
    const-string v0, "begin"

    iput-object v0, p0, Lcom/taobao/statistic/core/a$a;->iT:Ljava/lang/String;

    .line 1141
    return-void
.end method

.method public aO()V
    .locals 1

    .prologue
    .line 1144
    const-string v0, "end"

    iput-object v0, p0, Lcom/taobao/statistic/core/a$a;->iT:Ljava/lang/String;

    .line 1145
    return-void
.end method

.method public aP()Z
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/taobao/statistic/core/a$a;->iT:Ljava/lang/String;

    const-string v1, "begin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    const/4 v0, 0x1

    .line 1151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 0
    .parameter "pTimestamp"

    .prologue
    .line 1124
    iput-wide p1, p0, Lcom/taobao/statistic/core/a$a;->iR:J

    .line 1125
    return-void
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/taobao/statistic/core/a$a;->iS:Ljava/util/Properties;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1128
    iget-wide v0, p0, Lcom/taobao/statistic/core/a$a;->iR:J

    return-wide v0
.end method

.method public setProperties(Ljava/util/Properties;)V
    .locals 0
    .parameter "pProperties"

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/taobao/statistic/core/a$a;->iS:Ljava/util/Properties;

    .line 1133
    return-void
.end method
