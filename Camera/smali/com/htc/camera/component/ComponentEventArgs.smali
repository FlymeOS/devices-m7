.class public Lcom/htc/camera/component/ComponentEventArgs;
.super Lcom/htc/camera/base/EventArgs;
.source "ComponentEventArgs.java"


# instance fields
.field public final component:Lcom/htc/camera/component/Component;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/Component;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    .line 22
    return-void
.end method
