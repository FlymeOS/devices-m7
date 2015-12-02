.class Lcom/htc/camera/component/AutoBacklightIntentSender$5;
.super Lcom/htc/camera/trigger/Trigger;
.source "AutoBacklightIntentSender.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoBacklightIntentSender;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$5;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender$5;->this$0:Lcom/htc/camera/component/AutoBacklightIntentSender;

    # invokes: Lcom/htc/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->access$1300(Lcom/htc/camera/component/AutoBacklightIntentSender;)V

    .line 229
    return-void
.end method
