public abstract native class IFlightConfiguration extends IScriptable {
  @runtimeProperty("offset", "0x40")
  public native let component: ref<FlightComponent>;

  @runtimeProperty("offset", "0x50")
  public native let thrusters: array<ref<IFlightThruster>>;

  public func OnSetup() {

  }
}

// public class FlightConfiguration extends IFlightConfiguration {

// }

public class CarFlightConfiguration extends IFlightConfiguration {
  public func OnSetup() {
    // FlightLog.Info("[CarFlightConfiguration] OnSetup");
    ArrayPush(this.thrusters, new FlightThrusterFL().Create());
    ArrayPush(this.thrusters, new FlightThrusterFR().Create());
    ArrayPush(this.thrusters, new FlightThrusterBL().Create());
    ArrayPush(this.thrusters, new FlightThrusterBR().Create());

    for thruster in this.thrusters {
      thruster.OnSetup(this.component);
    }
  }
}

public class SixWheelCarFlightConfiguration extends CarFlightConfiguration {
  public func OnSetup() {
    ArrayPush(this.thrusters, new FlightThrusterFL().Create());
    ArrayPush(this.thrusters, new FlightThrusterFR().Create());
    ArrayPush(this.thrusters, new FlightThrusterFLB().Create());
    ArrayPush(this.thrusters, new FlightThrusterFRB().Create());
    ArrayPush(this.thrusters, new FlightThrusterBL().Create());
    ArrayPush(this.thrusters, new FlightThrusterBR().Create());

    for thruster in this.thrusters {
      thruster.OnSetup(this.component);
    }
  }
}

public class BikeFlightConfiguration extends IFlightConfiguration {
  public func OnSetup() {
    ArrayPush(this.thrusters, new FlightThrusterFront().Create());
    ArrayPush(this.thrusters, new FlightThrusterBack().Create());

    for thruster in this.thrusters {
      thruster.OnSetup(this.component);
    }
  }
}

public class FlightConfiguration_quadra_type66__basic_jen_rowley extends IFlightConfiguration {
  public func OnSetup() {
    ArrayPush(this.thrusters, new FlightThrusterFL().Create());
    ArrayPush(this.thrusters, new FlightThrusterFR().Create());
    ArrayPush(this.thrusters, new FlightThrusterBL().Create());
    ArrayPush(this.thrusters, new FlightThrusterBR().Create());

    for thruster in this.thrusters {
      thruster.OnSetup(this.component);
    }
  }
}