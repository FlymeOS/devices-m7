.class public Landroid/nfc/MultiSERoutingInfo;
.super Ljava/lang/Object;
.source "MultiSERoutingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/MultiSERoutingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static LOCATION_ESE:B

.field public static LOCATION_HOST:B

.field public static LOCATION_UICC:B

.field public static POWER_STATE_BOTH:B

.field public static POWER_STATE_FULL:B

.field public static POWER_STATE_LOW:B

.field public static PROTOCOL_MIFARE:B

.field public static ROUTE_AID:B

.field public static ROUTE_DEFAULT:B

.field public static ROUTE_PROTOCOL:B

.field public static ROUTE_TECHNOLOGY:B


# instance fields
.field private mLocation:B

.field private mPowerState:B

.field private mRouteDetail:[I

.field private mRouteType:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8
    const/4 v0, 0x0

    sput-byte v0, Landroid/nfc/MultiSERoutingInfo;->ROUTE_DEFAULT:B

    .line 9
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->ROUTE_AID:B

    .line 10
    sput-byte v2, Landroid/nfc/MultiSERoutingInfo;->ROUTE_PROTOCOL:B

    .line 11
    sput-byte v3, Landroid/nfc/MultiSERoutingInfo;->ROUTE_TECHNOLOGY:B

    .line 13
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->LOCATION_UICC:B

    .line 14
    sput-byte v2, Landroid/nfc/MultiSERoutingInfo;->LOCATION_ESE:B

    .line 15
    const/4 v0, 0x4

    sput-byte v0, Landroid/nfc/MultiSERoutingInfo;->LOCATION_HOST:B

    .line 17
    sput-byte v2, Landroid/nfc/MultiSERoutingInfo;->POWER_STATE_LOW:B

    .line 18
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->POWER_STATE_FULL:B

    .line 19
    sput-byte v3, Landroid/nfc/MultiSERoutingInfo;->POWER_STATE_BOTH:B

    .line 21
    sput-byte v1, Landroid/nfc/MultiSERoutingInfo;->PROTOCOL_MIFARE:B

    .line 88
    new-instance v0, Landroid/nfc/MultiSERoutingInfo$1;

    invoke-direct {v0}, Landroid/nfc/MultiSERoutingInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/MultiSERoutingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(B[IBB)V
    .locals 0
    .param p1, "routeType"    # B
    .param p2, "routeDetail"    # [I
    .param p3, "location"    # B
    .param p4, "powerState"    # B

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-byte p1, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteType:B

    .line 35
    iput-object p2, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[I

    .line 36
    iput-byte p3, p0, Landroid/nfc/MultiSERoutingInfo;->mLocation:B

    .line 37
    iput-byte p4, p0, Landroid/nfc/MultiSERoutingInfo;->mPowerState:B

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()B
    .locals 1

    .prologue
    .line 57
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mLocation:B

    return v0
.end method

.method public getPowerState()B
    .locals 1

    .prologue
    .line 65
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mPowerState:B

    return v0
.end method

.method public getRouteDetail()[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[I

    return-object v0
.end method

.method public getRouteType()B
    .locals 1

    .prologue
    .line 41
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteType:B

    return v0
.end method

.method public setLocation(B)V
    .locals 0
    .param p1, "mLocation"    # B

    .prologue
    .line 61
    iput-byte p1, p0, Landroid/nfc/MultiSERoutingInfo;->mLocation:B

    .line 62
    return-void
.end method

.method public setPowerState(B)V
    .locals 0
    .param p1, "mPowerState"    # B

    .prologue
    .line 69
    iput-byte p1, p0, Landroid/nfc/MultiSERoutingInfo;->mPowerState:B

    .line 70
    return-void
.end method

.method public setRouteDetail([I)V
    .locals 0
    .param p1, "mRouteDetail"    # [I

    .prologue
    .line 53
    iput-object p1, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[I

    .line 54
    return-void
.end method

.method public setRouteType(B)V
    .locals 0
    .param p1, "mRouteType"    # B

    .prologue
    .line 45
    iput-byte p1, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteType:B

    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mLocation:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mPowerState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-byte v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[I

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Landroid/nfc/MultiSERoutingInfo;->mRouteDetail:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 86
    :cond_0
    return-void
.end method
