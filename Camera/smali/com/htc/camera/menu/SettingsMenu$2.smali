.class Lcom/htc/camera/menu/SettingsMenu$2;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "SettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/menu/SettingsMenu;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/SettingsMenu;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/htc/camera/menu/SettingsMenu$2;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    const-string v0, "SettingsMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceClientStateDynamicListner VoiceClientStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/htc/camera/menu/SettingsMenu$2;->this$0:Lcom/htc/camera/menu/SettingsMenu;

    iget-object v0, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    # invokes: Lcom/htc/camera/menu/SettingsMenu;->updateVoiceCaptureItem(Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;)V
    invoke-static {v1, v0}, Lcom/htc/camera/menu/SettingsMenu;->access$100(Lcom/htc/camera/menu/SettingsMenu;Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;)V

    .line 633
    return-void
.end method
