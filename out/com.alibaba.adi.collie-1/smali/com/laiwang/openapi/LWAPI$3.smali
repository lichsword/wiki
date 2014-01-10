.class Lcom/laiwang/openapi/LWAPI$3;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    invoke-static {}, Lcom/laiwang/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "http://m.laiwang.com"

    invoke-static {v0, v1}, Lcom/laiwang/openapi/LWAPIUtils;->invokeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    return-void
.end method
