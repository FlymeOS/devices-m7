.class Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;
.super Ljava/lang/Object;
.source "BinderDumper.java"

# interfaces
.implements Lcom/android/server/am/BinderDumper$TimeOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BinderDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpTimeOutCallback"
.end annotation


# instance fields
.field private mIsTimeout:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;->mIsTimeout:Z

    return-void
.end method


# virtual methods
.method public isTimeout()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;->mIsTimeout:Z

    return v0
.end method

.method public timeout()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BinderDumper$DumpTimeOutCallback;->mIsTimeout:Z

    .line 107
    return-void
.end method
