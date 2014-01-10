.class Landroid/taobao/apirequest/ApiCache$MetaData;
.super Ljava/lang/Object;
.source "ApiCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/apirequest/ApiCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MetaData"
.end annotation


# instance fields
.field m_doObject:Ljava/lang/Object;

.field m_expirePoint:J

.field m_storagePolicy:I

.field final synthetic this$0:Landroid/taobao/apirequest/ApiCache;


# direct methods
.method constructor <init>(Landroid/taobao/apirequest/ApiCache;Ljava/lang/Object;IJ)V
    .locals 0
    .parameter
    .parameter "doObject"
    .parameter "storagePolicy"
    .parameter "expirePoint"

    .prologue
    .line 56
    iput-object p1, p0, Landroid/taobao/apirequest/ApiCache$MetaData;->this$0:Landroid/taobao/apirequest/ApiCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Landroid/taobao/apirequest/ApiCache$MetaData;->m_doObject:Ljava/lang/Object;

    .line 58
    iput p3, p0, Landroid/taobao/apirequest/ApiCache$MetaData;->m_storagePolicy:I

    .line 59
    iput-wide p4, p0, Landroid/taobao/apirequest/ApiCache$MetaData;->m_expirePoint:J

    .line 60
    return-void
.end method
