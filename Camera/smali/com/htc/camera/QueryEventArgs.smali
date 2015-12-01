.class public Lcom/htc/camera/QueryEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "QueryEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/event/EventArgs;"
    }
.end annotation


# instance fields
.field private m_HasResult:Z

.field private m_Result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/camera/QueryEventArgs;->m_Result:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasResult()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/camera/QueryEventArgs;->m_HasResult:Z

    return v0
.end method
