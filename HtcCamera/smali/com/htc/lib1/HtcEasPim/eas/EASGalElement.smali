.class public Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;
.super Ljava/lang/Object;
.source "EASGalElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Alias:Ljava/lang/String;

.field public Company:Ljava/lang/String;

.field public DisplayName:Ljava/lang/String;

.field public EmailAddress:Ljava/lang/String;

.field public FirstName:Ljava/lang/String;

.field public HomePhone:Ljava/lang/String;

.field public LastName:Ljava/lang/String;

.field public MobilePhone:Ljava/lang/String;

.field public Office:Ljava/lang/String;

.field public Phone:Ljava/lang/String;

.field public Title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/htc/lib1/HtcEasPim/eas/a;

    invoke-direct {v0}, Lcom/htc/lib1/HtcEasPim/eas/a;-><init>()V

    sput-object v0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Phone:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Office:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Title:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Company:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Alias:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->FirstName:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->LastName:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    .line 380
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/HtcEasPim/eas/a;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Office:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Company:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->Alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->FirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->LastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    return-void
.end method
