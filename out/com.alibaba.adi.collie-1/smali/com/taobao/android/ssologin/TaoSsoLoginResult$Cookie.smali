.class public Lcom/taobao/android/ssologin/TaoSsoLoginResult$Cookie;
.super Ljava/lang/Object;
.source "TaoSsoLoginResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/ssologin/TaoSsoLoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cookie"
.end annotation


# instance fields
.field public mDomain:Ljava/lang/String;

.field public mMaxAge:I

.field public mName:Ljava/lang/String;

.field public mSecure:Z

.field public mValue:Ljava/lang/String;

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
