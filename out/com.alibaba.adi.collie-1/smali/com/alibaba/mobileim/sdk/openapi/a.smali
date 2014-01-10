.class public abstract Lcom/alibaba/mobileim/sdk/openapi/a;
.super Ljava/lang/Object;
.source "BaseReq.java"


# instance fields
.field private hI:Ljava/lang/String;

.field private hJ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkArgs()Z
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/mobileim/sdk/openapi/a;->hI:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 36
    const-string v0, "wwapi_basereq_id"

    iget-object v1, p0, Lcom/alibaba/mobileim/sdk/openapi/a;->hI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "wwapi_command_type"

    iget v1, p0, Lcom/alibaba/mobileim/sdk/openapi/a;->hJ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    return-void
.end method
