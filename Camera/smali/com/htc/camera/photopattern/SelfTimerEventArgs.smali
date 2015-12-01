.class public Lcom/htc/camera/photopattern/SelfTimerEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "SelfTimerEventArgs.java"


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mRemainingTime:J

.field public final mSelfTimerHandle:Lcom/htc/camera/Handle;

.field public final mTotalTime:J

.field public final mUserState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mSelfTimerHandle:Lcom/htc/camera/Handle;

    .line 26
    iput-object p2, p0, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mName:Ljava/lang/String;

    .line 27
    iput-wide p3, p0, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mTotalTime:J

    .line 28
    iput-wide p5, p0, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mRemainingTime:J

    .line 29
    iput-object p7, p0, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mUserState:Ljava/lang/Object;

    .line 30
    return-void
.end method
