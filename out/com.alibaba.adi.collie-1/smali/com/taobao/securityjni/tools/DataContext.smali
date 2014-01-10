.class public Lcom/taobao/securityjni/tools/DataContext;
.super Ljava/lang/Object;
.source "DataContext.java"


# instance fields
.field public category:I

.field public extData:Ljava/lang/Object;

.field public index:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    .line 45
    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->category:I

    .line 46
    iput v1, p0, Lcom/taobao/securityjni/tools/DataContext;->type:I

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "index"
    .parameter "extData"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 51
    iput-object p2, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;II)V
    .locals 0
    .parameter "index"
    .parameter "extData"
    .parameter "cate"
    .parameter "type"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 56
    iput-object p2, p0, Lcom/taobao/securityjni/tools/DataContext;->extData:Ljava/lang/Object;

    .line 57
    iput p3, p0, Lcom/taobao/securityjni/tools/DataContext;->category:I

    .line 58
    iput p4, p0, Lcom/taobao/securityjni/tools/DataContext;->type:I

    .line 59
    return-void
.end method
