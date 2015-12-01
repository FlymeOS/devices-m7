.class public final Lcom/htc/camera/imaging/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Lcom/htc/camera/x;
.implements Ljava/lang/Cloneable;


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/htc/camera/imaging/Size;->width:I

    .line 24
    iput p2, p0, Lcom/htc/camera/imaging/Size;->height:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    .line 38
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/htc/camera/imaging/Size;->width:I

    .line 39
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/htc/camera/imaging/Size;->height:I

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/imaging/Size;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 46
    iget v0, p1, Lcom/htc/camera/imaging/Size;->width:I

    iput v0, p0, Lcom/htc/camera/imaging/Size;->width:I

    .line 47
    iget v0, p1, Lcom/htc/camera/imaging/Size;->height:I

    iput v0, p0, Lcom/htc/camera/imaging/Size;->height:I

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0, p0}, Lcom/htc/camera/imaging/Size;-><init>(Lcom/htc/camera/imaging/Size;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    instance-of v1, p1, Lcom/htc/camera/imaging/Size;

    if-eqz v1, :cond_0

    .line 68
    check-cast p1, Lcom/htc/camera/imaging/Size;

    .line 69
    iget v1, p0, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, p1, Lcom/htc/camera/imaging/Size;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/camera/imaging/Size;->height:I

    iget v2, p1, Lcom/htc/camera/imaging/Size;->height:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 71
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/camera/imaging/Size;->width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/htc/camera/imaging/Size;->height:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/camera/imaging/Size;->width:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/camera/imaging/Size;->height:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
