.class Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;
.super Ljava/lang/Object;
.source "ShareQQController.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/share/sdk/ShareQQController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseUiListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;->this$0:Lcom/alibaba/adi/collie/share/sdk/ShareQQController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;-><init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)V

    return-void
.end method


# virtual methods
.method protected doComplete(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 106
    return-void
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;->doComplete(Lorg/json/JSONObject;)V

    .line 102
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 112
    return-void
.end method
