.class Lcom/taobao/statistic/module/g/b$a;
.super Ljava/lang/Object;
.source "SimpleEventIDStrategier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/module/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private oP:I

.field private oQ:I

.field final synthetic oR:Lcom/taobao/statistic/module/g/b;


# direct methods
.method constructor <init>(Lcom/taobao/statistic/module/g/b;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/taobao/statistic/module/g/b$a;->oR:Lcom/taobao/statistic/module/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/taobao/statistic/module/g/b$a;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/taobao/statistic/module/g/b$a;->oQ:I

    return v0
.end method


# virtual methods
.method public V(I)V
    .locals 0
    .parameter "pEventID"

    .prologue
    .line 131
    iput p1, p0, Lcom/taobao/statistic/module/g/b$a;->oP:I

    .line 132
    return-void
.end method

.method public W(I)V
    .locals 0
    .parameter "pCP"

    .prologue
    .line 139
    iput p1, p0, Lcom/taobao/statistic/module/g/b$a;->oQ:I

    .line 140
    return-void
.end method
