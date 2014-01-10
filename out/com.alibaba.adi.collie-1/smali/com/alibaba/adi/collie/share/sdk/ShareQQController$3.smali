.class Lcom/alibaba/adi/collie/share/sdk/ShareQQController$3;
.super Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;
.source "ShareQQController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->doShare2QQ(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$3;->this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;-><init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;)V

    return-void
.end method


# virtual methods
.method protected doComplete(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 72
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 81
    return-void
.end method
