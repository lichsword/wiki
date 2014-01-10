.class public Lcom/alibaba/mobileim/sdk/openapi/d;
.super Ljava/lang/Object;
.source "WWAPIFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/alibaba/mobileim/sdk/openapi/b;
    .locals 1
    .parameter "context"
    .parameter "appId"
    .parameter "ignoreSign"

    .prologue
    .line 35
    new-instance v0, Lcom/alibaba/mobileim/sdk/openapi/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mobileim/sdk/openapi/e;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method
