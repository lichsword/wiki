.class Lcom/etao/kakalib/CaptureCodeFragment$7;
.super Ljava/lang/Object;
.source "CaptureCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/CaptureCodeFragment;->sdkGlobalInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/CaptureCodeFragment;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/CaptureCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/CaptureCodeFragment$7;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 560
    :try_start_0
    invoke-static {}, Lcom/etao/kakalib/api/KaKaLibApiProcesser;->readWhiteHosts()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, whiteListMsg:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/etao/kakalib/CaptureCodeFragment$7;->this$0:Lcom/etao/kakalib/CaptureCodeFragment;

    invoke-virtual {v2}, Lcom/etao/kakalib/CaptureCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/etao/kakalib/util/KaKaLibUtils;->writeWhiteHosts(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 571
    .end local v1           #whiteListMsg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->printStackTrace()V

    goto :goto_0

    .line 566
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_1
    move-exception v0

    .line 567
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 568
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 569
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
