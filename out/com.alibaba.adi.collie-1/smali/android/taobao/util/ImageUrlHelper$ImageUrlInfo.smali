.class public Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
.super Ljava/lang/Object;
.source "ImageUrlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/util/ImageUrlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageUrlInfo"
.end annotation


# instance fields
.field public baseurl:Ljava/lang/String;

.field public cj:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public height:I

.field public quality:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;->cj:Ljava/lang/String;

    return-void
.end method
