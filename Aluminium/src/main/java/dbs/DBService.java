package dbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.imageio.spi.RegisterableService;

import dto.Admin;
import dto.Contactus;
import dto.Reg;

public class DBService {
    Connection con = null;

    public DBService() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/furniture?user=root&password=Vishal*789");
        } catch (Exception e) {
            System.out.print(e);
        }
    }

    // user
    public boolean user(Admin a)
    {
        boolean isValid = false;
        try 
        {
            PreparedStatement ps = con.prepareStatement("select * from signup where Email = ? and Password = ?");
            ps.setString(1, a.getEmail());
            ps.setString(2, a.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next())
            {
                isValid = true;
            }
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
        return isValid;
    }

    // admin
    public boolean admin(Admin a)
    {
        boolean isValid = false;
        try 
        {
            PreparedStatement ps = con.prepareStatement("select * from login where Email = ? and Password = ?");
            ps.setString(1, a.getEmail());
            ps.setString(2, a.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) 
            {
                isValid = true;
            }
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
        return isValid;
    }


		public int signup(Admin a)
		{
			int x=0;
		try 
		{
		
			PreparedStatement ps = con.prepareStatement("insert into signup values (?, ?)");
	        ps.setString(1, a.getEmail());
	        ps.setString(2, a.getPassword());
	        x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
		return x;
	}
		public int forget(Admin a)
		{
			int x=0;
		try 
		{
		
		PreparedStatement ps = con.prepareStatement("update signup set Password = ? where Email=?");
		ps.setString(1, a.getPassword());
		ps.setString(2, a.getEmail());
		x = ps.executeUpdate();
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return x;
	}
		
		public  int contact(Contactus c)
		{
			int x=0;
		try 
		{
		
		PreparedStatement ps = con.prepareStatement("insert into contact values (?, ?, ?, ?)");
		ps.setString(1, c.getName());
		ps.setString(2, c.getNumber());
		ps.setString(3, c.getEmail());
		ps.setString(4, c.getMsg());
		x = ps.executeUpdate(); 
		}
		catch (Exception e) 
		{
        System.out.println(e);
        }
        return x;
      }
//		public int sagwan(Registration r)
//		{
//			int x=0;
//			try
//			{
//				PreparedStatement ps=con.prepareStatement("insert into sagwan values(?, ?, ?, ?, ?)");
//			    ps.setString(1, r.getName());
//			    ps.setString(2,r.getEmail());
//			    ps.setString(3, r.getNumber());
//			    ps.setString(4, r.getCity());
//			    ps.setString(5, r.getArtstyle());
//			    x = ps.executeUpdate();
//			}
//			catch(Exception e)
//			{
//				System.out.println(e);
//			}
//			return x;
//		}
//		
//		public int sal(Registration r)
//		{
//			int x=0;
//			try
//			{
//				PreparedStatement ps=con.prepareStatement("insert into sal values(?, ?, ?, ?, ?)");
//			    ps.setString(1, r.getName());
//			    ps.setString(2,r.getEmail());
//			    ps.setString(3, r.getNumber());
//			    ps.setString(4, r.getCity());
//			    ps.setString(5, r.getArtstyle());
//			    x = ps.executeUpdate();
//			}
//			catch(Exception e)
//			{
//				System.out.println(e);
//			}
//			return x;
//		}
//		
//		public int plywood(Registration r)
//		{
//			int x=0;
//			try
//			{
//				PreparedStatement ps=con.prepareStatement("insert into plywood values(?, ?, ?, ?, ?)");
//			    ps.setString(1, r.getName());
//			    ps.setString(2,r.getEmail());
//			    ps.setString(3, r.getNumber());
//			    ps.setString(4, r.getCity());
//			    ps.setString(5, r.getArtstyle());
//			    x = ps.executeUpdate();
//			}
//			catch(Exception e)
//			{
//				System.out.println(e);
//			}
//			return x;
//		}
//		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public int reg(Reg r)
		{
			int x=0;
			try
			{
				PreparedStatement ps=con.prepareStatement("insert into person values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			    ps.setString(1, r.getFirstName());
			    ps.setString(2,r.getMiddleName());
			    ps.setString(3, r.getLastName());
			    ps.setString(4, r.getFatherName());
			    ps.setString(5, r.getMotherName());
			    ps.setString(6, r.getCountryCode());
			    ps.setString(7,r.getMobileNumber());
			    ps.setString(8, r.getEmail());
			    ps.setString(9, r.getEducationYear());
			    ps.setString(10, r.getLastPassedClass());
			    ps.setString(11, r.getOccupation());
			    ps.setString(12,r.getAddress());
			    ps.setString(13, r.getPhoto());
	
			    x = ps.executeUpdate();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return x;
		}
		
		// Display Customer Details//
		
				public ArrayList<Reg> getReg()
				{
					ArrayList<Reg> al = new ArrayList<Reg>();
				
				try 
				{
				
				PreparedStatement ps = con.prepareStatement("select * from person");

				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					Reg r = new Reg();
					r.setFirstName(rs.getString("firstName"));
					r.setMiddleName(rs.getString("middleName"));
					r.setLastName(rs.getString("lastName"));
					r.setFatherName(rs.getString("fatherName"));
					r.setMotherName(rs.getString("motherName"));
					r.setCountryCode(rs.getString("countryCode"));
					r.setMobileNumber(rs.getString("mobileNumber"));
					r.setEmail(rs.getString("email"));
					r.setEducationYear(rs.getString("educationYear"));
					r.setLastPassedClass(rs.getString("lastPassedClass"));
					r.setOccupation(rs.getString("occupation"));
					r.setAddress(rs.getString("address"));
					r.setPhoto(rs.getString("photo"));
					al.add(r);
				}
				}
				catch (Exception e)
				{
					System.out.println(e);
				}
				
				return al;
			}
				
				
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// Display Customer Details//
		
//		public ArrayList<Registration> getSagwan()
//		{
//			ArrayList<Registration> al = new ArrayList<Registration>();
//		
//		try 
//		{
//		
//		PreparedStatement ps = con.prepareStatement("select * from sagwan");
//
//		ResultSet rs = ps.executeQuery();
//		while(rs.next())
//		{
//			Registration r = new Registration();
//			r.setName(rs.getString("name"));
//			r.setEmail(rs.getString("email"));
//			r.setNumber(rs.getString("number"));
//			r.setCity(rs.getString("city"));
//			r.setArtstyle(rs.getString("artstyle"));
//			al.add(r);
//		}
//		}
//		catch (Exception e)
//		{
//			System.out.println(e);
//		}
//		
//		return al;
//	}
//		
//		
//		public ArrayList<Registration> getSal()
//		{
//			ArrayList<Registration> al = new ArrayList<Registration>();
//		
//		try 
//		{
//		
//		PreparedStatement ps = con.prepareStatement("select * from sal");
//
//		ResultSet rs = ps.executeQuery();
//		while(rs.next())
//		{
//			Registration r = new Registration();
//			r.setName(rs.getString("name"));
//			r.setEmail(rs.getString("email"));
//			r.setNumber(rs.getString("number"));
//			r.setCity(rs.getString("city"));
//			r.setArtstyle(rs.getString("artstyle"));
//			al.add(r);
//		}
//		}
//		catch (Exception e)
//		{
//			System.out.println(e);
//		}
//		
//		return al;
//	}
//		
//		
//		
//		public ArrayList<Registration> getPlywood()
//		{
//			ArrayList<Registration> al = new ArrayList<Registration>();
//		
//		try 
//		{
//		
//		PreparedStatement ps = con.prepareStatement("select * from plywood");
//
//		ResultSet rs = ps.executeQuery();
//		while(rs.next())
//		{
//			Registration r = new Registration();
//			r.setName(rs.getString("name"));
//			r.setEmail(rs.getString("email"));
//			r.setNumber(rs.getString("number"));
//			r.setCity(rs.getString("city"));
//			r.setArtstyle(rs.getString("artstyle"));
//			al.add(r);
//		}
//		}
//		catch (Exception e)
//		{
//			System.out.println(e);
//		}
//		
//		return al;
//	}
//		
		
		public ArrayList<Contactus> getContacts()
		{
			ArrayList<Contactus> al = new ArrayList<Contactus>();
		
		try 
		{
		
		PreparedStatement ps = con.prepareStatement("select * from contact");

		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			Contactus c = new Contactus();
			c.setName(rs.getString("name"));
			c.setNumber(rs.getString("number"));
			c.setEmail(rs.getString("email"));
			c.setMsg(rs.getString("msg"));
			al.add(c);
		}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		return al;
	}
		
		
		
		
}
