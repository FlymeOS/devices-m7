.class Lcom/htc/camera/photopattern/PhotoBoothUI2$13;
.super Ljava/lang/Object;
.source "PhotoBoothUI2.java"

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
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

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
    .line 1313
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v0, v0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->stopCapture()Z

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->hideReviewScreen()V
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    .line 1328
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->closeCaptureUI()V
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2700(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    .line 1330
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$2800(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnter() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 1334
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$13;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z
    invoke-static {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$602(Lcom/htc/camera/photopattern/PhotoBoothUI2;Z)Z

    goto :goto_0
.end method
