.class Lcom/htc/camera/power/BatteryWatcher$3;
.super Ljava/lang/Object;
.source "BatteryWatcher.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/power/BatteryWatcher;


# direct methods
.method constructor <init>(Lcom/htc/camera/power/BatteryWatcher;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/camera/power/BatteryWatcher$3;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$3;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    sget-object v1, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_BATTERY_LEVEL_PERCENTAGE:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/power/BatteryWatcher;->access$300(Lcom/htc/camera/power/BatteryWatcher;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$3;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    sget-object v1, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_IS_LOW_BATTERY_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/power/BatteryWatcher;->access$400(Lcom/htc/camera/power/BatteryWatcher;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher$3;->this$0:Lcom/htc/camera/power/BatteryWatcher;

    sget-object v1, Lcom/htc/camera/power/IBatteryWatcher;->PROPERTY_IS_LOW_BATTERY_TEMPERATURE:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/power/BatteryWatcher;->access$500(Lcom/htc/camera/power/BatteryWatcher;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 190
    return-void
.end method
