.class Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;
.super Landroid/os/Binder;
.source "PidGetterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/sso/internal/PidGetterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PidGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/sso/internal/PidGetterService;


# direct methods
.method constructor <init>(Lcom/taobao/android/sso/internal/PidGetterService;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;->this$0:Lcom/taobao/android/sso/internal/PidGetterService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;->this$0:Lcom/taobao/android/sso/internal/PidGetterService;

    const-string v7, "com.taobao.permission.USE_CREDENTIALS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/taobao/android/sso/internal/PidGetterService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 66
    const/4 v5, 0x0

    .line 94
    :goto_0
    return v5

    .line 67
    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .local v4, token:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 71
    .local v0, remotePid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 72
    .local v1, remoteUid:I
    sget-object v5, Lcom/taobao/android/sso/internal/PidGetterService;->sTokenArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/sso/internal/TokenInfo;

    .line 73
    .local v2, ti:Lcom/taobao/android/sso/internal/TokenInfo;
    if-nez v2, :cond_1

    .line 74
    new-instance v2, Lcom/taobao/android/sso/internal/TokenInfo;

    .end local v2           #ti:Lcom/taobao/android/sso/internal/TokenInfo;
    invoke-direct {v2}, Lcom/taobao/android/sso/internal/TokenInfo;-><init>()V

    .line 75
    .restart local v2       #ti:Lcom/taobao/android/sso/internal/TokenInfo;
    sget-object v5, Lcom/taobao/android/sso/internal/PidGetterService;->sTokenArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    :cond_1
    iput v0, v2, Lcom/taobao/android/sso/internal/TokenInfo;->mPid:I

    .line 78
    iput v1, v2, Lcom/taobao/android/sso/internal/TokenInfo;->mUid:I

    .line 79
    iget-object v5, v2, Lcom/taobao/android/sso/internal/TokenInfo;->mTokens:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    const/4 v5, 0x1

    goto :goto_0

    .line 82
    .end local v0           #remotePid:I
    .end local v1           #remoteUid:I
    .end local v2           #ti:Lcom/taobao/android/sso/internal/TokenInfo;
    .end local v4           #token:I
    :cond_2
    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 84
    const/4 v5, 0x1

    new-array v3, v5, [Z

    .line 85
    .local v3, tmpArray:[Z
    const/4 v5, 0x0

    sget-boolean v6, Lcom/taobao/android/sso/internal/PidGetterService;->sIsGetAuthTokenHasPid:Z

    aput-boolean v6, v3, v5

    .line 86
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 87
    const/4 v5, 0x1

    goto :goto_0

    .line 88
    .end local v3           #tmpArray:[Z
    :cond_3
    const/4 v5, 0x3

    if-ne p1, v5, :cond_4

    .line 89
    const/4 v5, 0x1

    new-array v3, v5, [Z

    .line 90
    .restart local v3       #tmpArray:[Z
    const/4 v5, 0x0

    sget-boolean v6, Lcom/taobao/android/sso/internal/PidGetterService;->sIsAddAccountHasPid:Z

    aput-boolean v6, v3, v5

    .line 91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 92
    const/4 v5, 0x1

    goto :goto_0

    .line 94
    .end local v3           #tmpArray:[Z
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0
.end method
