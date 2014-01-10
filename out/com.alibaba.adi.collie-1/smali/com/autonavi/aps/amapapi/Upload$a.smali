.class public final Lcom/autonavi/aps/amapapi/Upload$a;
.super Landroid/os/Binder;
.source "Upload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/aps/amapapi/Upload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/aps/amapapi/Upload;


# direct methods
.method public constructor <init>(Lcom/autonavi/aps/amapapi/Upload;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/Upload$a;->a:Lcom/autonavi/aps/amapapi/Upload;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/autonavi/aps/amapapi/Upload;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/Upload$a;->a:Lcom/autonavi/aps/amapapi/Upload;

    return-object v0
.end method
