.class public abstract Lcom/htc/camera/component/ICountDownTimer;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ICountDownTimer.java"


# instance fields
.field public final isSelfTimerStarted:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final timerCanceledEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final timerFinishedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final timerTickEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 5

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 28
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "ICountDownTimer.isSelfTimerStarted"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/component/ICountDownTimer;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/component/ICountDownTimer;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    .line 29
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "ISelfTimer.TimerTickEvent"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/ICountDownTimer;->timerTickEvent:Lcom/htc/camera/event/Event;

    .line 30
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "ISelfTimer.TimerCanceledEvent"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/ICountDownTimer;->timerCanceledEvent:Lcom/htc/camera/event/Event;

    .line 31
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "ISelfTimer.TimerFinishedEvent"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/ICountDownTimer;->timerFinishedEvent:Lcom/htc/camera/event/Event;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract startCountDown(Ljava/lang/String;JLcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;
.end method

.method public abstract stopCountDown(Lcom/htc/camera/Handle;)V
.end method
