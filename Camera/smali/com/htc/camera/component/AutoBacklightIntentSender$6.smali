.class Lcom/htc/camera/component/AutoBacklightIntentSender$6;
.super Ljava/lang/Object;
.source "AutoBacklightIntentSender.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$6;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$6;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$6;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # invokes: Lcom/htc/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$1300(Lcom/htc/camera/component/AutoBacklightIntentSender;)V

    .line 241
    :cond_0
    return-void
.end method
