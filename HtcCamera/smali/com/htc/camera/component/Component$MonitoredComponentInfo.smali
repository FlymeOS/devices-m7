.class Lcom/htc/camera/component/Component$MonitoredComponentInfo;
.super Ljava/lang/Object;
.source "Component.java"


# instance fields
.field public component:Lcom/htc/camera/component/Component;

.field public final componentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public flags:I

.field public isAddedToComponentManager:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/htc/camera/component/Component;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/htc/camera/component/Component;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    .line 99
    iput-object p2, p0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->component:Lcom/htc/camera/component/Component;

    .line 100
    iput p3, p0, Lcom/htc/camera/component/Component$MonitoredComponentInfo;->flags:I

    .line 101
    return-void
.end method
