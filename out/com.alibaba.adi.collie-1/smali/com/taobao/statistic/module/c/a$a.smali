.class Lcom/taobao/statistic/module/c/a$a;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/module/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private nY:Lcom/taobao/statistic/Arg;

.field private nZ:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/module/c/a$a;->nY:Lcom/taobao/statistic/Arg;

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/statistic/module/c/a$a;->nZ:Z

    return-void
.end method

.method static synthetic a(Lcom/taobao/statistic/module/c/a$a;)Lcom/taobao/statistic/Arg;
    .locals 1
    .parameter "x0"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/taobao/statistic/module/c/a$a;->nY:Lcom/taobao/statistic/Arg;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/statistic/module/c/a$a;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/taobao/statistic/module/c/a$a;->nZ:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/taobao/statistic/Arg;)V
    .locals 0
    .parameter "arg"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/taobao/statistic/module/c/a$a;->nY:Lcom/taobao/statistic/Arg;

    .line 460
    return-void
.end method

.method public dy()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/taobao/statistic/module/c/a$a;->nZ:Z

    return v0
.end method

.method public y(Z)V
    .locals 0
    .parameter "isApp"

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/taobao/statistic/module/c/a$a;->nZ:Z

    .line 468
    return-void
.end method
