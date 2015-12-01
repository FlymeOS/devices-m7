.class public Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;
.super Ljava/lang/Object;
.source "EASResolveRecipientsRecipientElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public DisplayName:Ljava/lang/String;

.field public EmailAddress:Ljava/lang/String;

.field public MergedFreeBusy:Ljava/lang/String;

.field public Status:I

.field public Type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/htc/lib1/HtcEasPim/eas/c;

    invoke-direct {v0}, Lcom/htc/lib1/HtcEasPim/eas/c;-><init>()V

    sput-object v0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->Type:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->DisplayName:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->EmailAddress:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->Status:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->MergedFreeBusy:Ljava/lang/String;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/lib1/HtcEasPim/eas/c;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->Type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->EmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->Status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/htc/lib1/HtcEasPim/eas/EASResolveRecipientsRecipientElement;->MergedFreeBusy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method
