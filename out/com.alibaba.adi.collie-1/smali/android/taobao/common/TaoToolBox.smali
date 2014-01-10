.class public Landroid/taobao/common/TaoToolBox;
.super Ljava/lang/Object;
.source "TaoToolBox.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fullURL(Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 96
    invoke-static {p0}, Landroid/taobao/util/ImageUrlHelper;->fullURL(Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringOnNum(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "str"
    .parameter "b"
    .parameter "n"

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Landroid/taobao/util/TaoSdkHelper;->getStringOnNum(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "str"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseImageUrl(Ljava/lang/String;)Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;
    .locals 1
    .parameter "url"

    .prologue
    .line 87
    invoke-static {p0}, Landroid/taobao/util/ImageUrlHelper;->parseImageUrl(Ljava/lang/String;)Landroid/taobao/util/ImageUrlHelper$ImageUrlInfo;

    move-result-object v0

    return-object v0
.end method

.method public static picUrlProcess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "size"

    .prologue
    .line 47
    invoke-static {p0, p1}, Landroid/taobao/util/ImageUrlHelper;->picUrlProcess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "secret"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, params:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Landroid/taobao/util/TaoSdkHelper;->sign(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
