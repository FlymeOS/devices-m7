.class Lcom/htc/camera/component/SensorFocusController$7;
.super Lcom/htc/camera/data/Trigger;
.source "SensorFocusController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/Trigger",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$7;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/data/Trigger;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$7;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$102(Lcom/htc/camera/component/SensorFocusController;Z)Z

    .line 383
    return-void
.end method
