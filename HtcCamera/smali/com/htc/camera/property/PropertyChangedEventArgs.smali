.class public Lcom/htc/camera/property/PropertyChangedEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "PropertyChangedEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/camera/event/EventArgs;"
    }
.end annotation


# instance fields
.field public final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final oldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final property:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<TTValue;>;TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htc/camera/property/PropertyChangedEventArgs;->property:Lcom/htc/camera/property/Property;

    .line 20
    iput-object p2, p0, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    .line 21
    iput-object p3, p0, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    .line 22
    return-void
.end method
