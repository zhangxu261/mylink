.class Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;
    .locals 3

    new-instance v0, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;-><init>(II)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$a;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority$a;->a(I)[Lcom/autonavi/navigation/api/poi/model/DisplayPoiPriority;

    move-result-object v0

    return-object v0
.end method
