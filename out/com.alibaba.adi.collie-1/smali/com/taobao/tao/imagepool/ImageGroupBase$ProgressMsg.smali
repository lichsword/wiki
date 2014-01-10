.class Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;
.super Ljava/lang/Object;
.source "ImageGroupBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/imagepool/ImageGroupBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressMsg"
.end annotation


# instance fields
.field m_desc:Ljava/lang/String;

.field m_index:I

.field m_size:I

.field m_total:I

.field m_url:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/tao/imagepool/ImageGroupBase;


# direct methods
.method constructor <init>(Lcom/taobao/tao/imagepool/ImageGroupBase;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "desc"
    .parameter "size"
    .parameter "total"
    .parameter "url"
    .parameter "index"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->this$0:Lcom/taobao/tao/imagepool/ImageGroupBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p2, p0, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_desc:Ljava/lang/String;

    .line 282
    iput p3, p0, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_size:I

    .line 283
    iput p4, p0, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_total:I

    .line 284
    iput-object p5, p0, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_url:Ljava/lang/String;

    .line 285
    iput p6, p0, Lcom/taobao/tao/imagepool/ImageGroupBase$ProgressMsg;->m_index:I

    .line 286
    return-void
.end method
