.class Lcom/laiwang/openapi/LWAPI$4;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/openapi/LWAPI;->dialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/openapi/LWAPI;


# direct methods
.method constructor <init>(Lcom/laiwang/openapi/LWAPI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/openapi/LWAPI$4;->this$0:Lcom/laiwang/openapi/LWAPI;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 300
    return-void
.end method
