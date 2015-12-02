.class Lcom/htc/camera/component/ScreenSaveUI$2;
.super Ljava/lang/Object;
.source "ScreenSaveUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ScreenSaveUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ScreenSaveUI;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/camera/component/ScreenSaveUI$2;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<[F>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/htc/camera/component/ScreenSaveUI$2;->this$0:Lcom/htc/camera/component/ScreenSaveUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    # invokes: Lcom/htc/camera/component/ScreenSaveUI;->onAccelerometerValuesChanged([F)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/ScreenSaveUI;->access$000(Lcom/htc/camera/component/ScreenSaveUI;[F)V

    .line 90
    return-void
.end method
