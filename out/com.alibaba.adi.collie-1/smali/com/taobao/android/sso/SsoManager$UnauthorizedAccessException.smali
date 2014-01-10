.class public Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;
.super Ljava/security/GeneralSecurityException;
.source "SsoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sso/SsoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnauthorizedAccessException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36c67dca331f33dL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method
