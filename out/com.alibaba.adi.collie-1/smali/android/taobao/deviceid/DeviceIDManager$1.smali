.class Landroid/taobao/deviceid/DeviceIDManager$1;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/deviceid/DeviceIDManager;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/deviceid/DeviceIDManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/taobao/deviceid/DeviceIDManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->this$0:Landroid/taobao/deviceid/DeviceIDManager;

    iput-object p2, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/taobao/deviceid/DeviceIDManager$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->this$0:Landroid/taobao/deviceid/DeviceIDManager;

    #getter for: Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/taobao/deviceid/DeviceIDManager;->access$000(Landroid/taobao/deviceid/DeviceIDManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->this$0:Landroid/taobao/deviceid/DeviceIDManager;

    iget-object v1, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->this$0:Landroid/taobao/deviceid/DeviceIDManager;

    iget-object v2, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    #calls: Landroid/taobao/deviceid/DeviceIDManager;->getSharePreferenceDeviceID(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/taobao/deviceid/DeviceIDManager;->access$100(Landroid/taobao/deviceid/DeviceIDManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/taobao/deviceid/DeviceIDManager;->access$002(Landroid/taobao/deviceid/DeviceIDManager;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    :cond_0
    iget-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->this$0:Landroid/taobao/deviceid/DeviceIDManager;

    #getter for: Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/taobao/deviceid/DeviceIDManager;->access$000(Landroid/taobao/deviceid/DeviceIDManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->this$0:Landroid/taobao/deviceid/DeviceIDManager;

    iget-object v1, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->this$0:Landroid/taobao/deviceid/DeviceIDManager;

    iget-object v2, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->val$context:Landroid/content/Context;

    #calls: Landroid/taobao/deviceid/DeviceIDManager;->getRemoteDeviceID(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/taobao/deviceid/DeviceIDManager;->access$200(Landroid/taobao/deviceid/DeviceIDManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/taobao/deviceid/DeviceIDManager;->access$002(Landroid/taobao/deviceid/DeviceIDManager;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    :cond_1
    iget-object v0, p0, Landroid/taobao/deviceid/DeviceIDManager$1;->this$0:Landroid/taobao/deviceid/DeviceIDManager;

    #getter for: Landroid/taobao/deviceid/DeviceIDManager;->mDeviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/taobao/deviceid/DeviceIDManager;->access$000(Landroid/taobao/deviceid/DeviceIDManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
