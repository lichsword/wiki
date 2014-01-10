.class public Landroid/taobao/nativewebview/WebViewHelper;
.super Ljava/lang/Object;
.source "WebViewHelper.java"

# interfaces
.implements Landroid/taobao/apirequest/ConnectorHelper;


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Landroid/taobao/nativewebview/WebViewHelper;->url:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Landroid/taobao/nativewebview/WebViewHelper;->url:Ljava/lang/String;

    return-object v0
.end method

.method public syncPaser([B)Ljava/lang/Object;
    .locals 1
    .parameter "all"

    .prologue
    .line 22
    array-length v0, p1

    if-lez v0, :cond_0

    .line 24
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
